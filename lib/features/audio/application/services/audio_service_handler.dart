import 'package:audio_service/audio_service.dart';
import 'package:flutter/foundation.dart';
import 'package:just_audio/just_audio.dart';
import 'package:quran_app/features/audio/application/services/audio_player_manager.dart';

class QuranAudioHandler extends BaseAudioHandler
    with QueueHandler, SeekHandler {
  final AudioPlayerManager _playerManager;

  QuranAudioHandler(this._playerManager) {
    _playerManager.playbackStateStream.listen(_handlePlaybackState);
    _playerManager.player.positionStream.listen((position) {
      playbackState.add(playbackState.value.copyWith(
        updatePosition: position,
      ));
    });
    _playerManager.player.currentIndexStream.listen((index) {
      if (index != null) {
        mediaItem.add(queue.value[index]);
      }
    });
  }

  final _queue = <MediaItem>[];
  AudioTrack? _currentTrack;

  @override
  Future<void> play() => _playerManager.play();

  @override
  Future<void> pause() => _playerManager.pause();

  @override
  Future<void> stop() => _playerManager.stop();

  @override
  Future<void> seek(Duration position) => _playerManager.seek(position);

  @override
  Future<void> skipToNext() => _playerManager.playNext();

  @override
  Future<void> skipToPrevious() => _playerManager.playPrevious();

  @override
  Future<void> setSpeed(double speed) => _playerManager.setSpeed(speed);

  @override
  Future<void> setRepeatMode(AudioServiceRepeatMode repeatMode) async {
    switch (repeatMode) {
      case AudioServiceRepeatMode.none:
        _playerManager.setLoopMode(LoopMode.off);
      case AudioServiceRepeatMode.one:
        _playerManager.setLoopMode(LoopMode.one);
      case AudioServiceRepeatMode.group:
      case AudioServiceRepeatMode.all:
        _playerManager.setLoopMode(LoopMode.all);
    }
  }

  @override
  Future<void> addQueueItem(MediaItem mediaItem) async {
    _queue.add(mediaItem);
    queue.add(_queue);
  }

  @override
  Future<void> addQueueItems(List<MediaItem> mediaItems) async {
    _queue.addAll(mediaItems);
    queue.add(_queue);
  }

  Future<void> loadTrack(AudioTrack track) async {
    _currentTrack = track;
    await _playerManager.loadTrack(track);

    final mediaItem = MediaItem(
      id: '${track.reciterId}_${track.surahId}',
      album: track.reciterName,
      title: track.surahName,
      displayTitle: track.surahArabic,
      duration: Duration(seconds: track.durationSeconds),
      artUri: Uri.tryParse(
        'https://cdn.quranapp.com/reciters/${track.reciterId}/thumb.jpg',
      ),
    );

    // Set media item for the track
    // mediaItem is handled by the platform
  }

  Future<void> loadPlaylist(List<AudioTrack> tracks, {int initialIndex = 0}) async {
    await _playerManager.loadPlaylist(tracks, initialIndex: initialIndex);
    _queue.clear();

    final mediaItems = tracks.asMap().entries.map((entry) {
      final t = entry.value;
      return MediaItem(
        id: '${t.reciterId}_${t.surahId}',
        album: t.reciterName,
        title: t.surahName,
        displayTitle: t.surahArabic,
        duration: Duration(seconds: t.durationSeconds),
      );
    }).toList();

    _queue.addAll(mediaItems);
    queue.add(_queue);

    if (initialIndex < mediaItems.length) {
      mediaItem.add(mediaItems[initialIndex]);
    }
  }

  void _handlePlaybackState(AudioPlaybackState state) {
    final controls = _buildControls(state);
    final processingState = _mapProcessingState(state);

    playbackState.add(playbackState.value.copyWith(
      updatePosition: _playerManager.position,
    ));
  }

  List<MediaControl> _buildControls(AudioPlaybackState state) {
    return switch (state) {
      AudioPlaybackState.playing => [
          const MediaControl(
            androidIcon: 'drawable/ic_notification_pause',
            label: 'Pause',
            action: MediaAction.pause,
          ),
          MediaControl.skipToPrevious,
          MediaControl.skipToNext,
          MediaControl.stop,
        ],
      AudioPlaybackState.paused => [
          const MediaControl(
            androidIcon: 'drawable/ic_notification_play',
            label: 'Play',
            action: MediaAction.play,
          ),
          MediaControl.skipToPrevious,
          MediaControl.skipToNext,
          MediaControl.stop,
        ],
      _ => [
          MediaControl.skipToPrevious,
          MediaControl.skipToNext,
          MediaControl.stop,
        ],
    };
  }

  AudioProcessingState _mapProcessingState(AudioPlaybackState state) {
    return switch (state) {
      AudioPlaybackState.playing => AudioProcessingState.ready,
      AudioPlaybackState.paused => AudioProcessingState.ready,
      AudioPlaybackState.stopped => AudioProcessingState.idle,
      AudioPlaybackState.loading => AudioProcessingState.buffering,
      AudioPlaybackState.completed => AudioProcessingState.completed,
    };
  }
}
