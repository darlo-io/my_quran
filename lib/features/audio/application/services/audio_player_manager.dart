import 'package:just_audio/just_audio.dart';

enum AudioPlaybackState { stopped, playing, paused, loading, completed }

class AudioTrack {
  final int surahId;
  final String surahName;
  final String surahArabic;
  final int reciterId;
  final String reciterName;
  final String audioUrl;
  final String? localPath;
  final int durationSeconds;

  const AudioTrack({
    required this.surahId,
    required this.surahName,
    required this.surahArabic,
    required this.reciterId,
    required this.reciterName,
    required this.audioUrl,
    this.localPath,
    required this.durationSeconds,
  });
}

class AudioPlayerManager {
  final AudioPlayer _player;
  Stream<AudioPlaybackState>? _playbackStateStream;

  AudioPlayerManager() : _player = AudioPlayer();

  AudioPlayer get player => _player;

  Stream<Duration> get positionStream => _player.positionStream;
  Stream<Duration?> get durationStream => _player.durationStream;

  Stream<AudioPlaybackState> get playbackStateStream {
    _playbackStateStream ??= _player.playerStateStream.map((state) {
      if (state.playing) {
        return AudioPlaybackState.playing;
      } else if (state.processingState == ProcessingState.loading ||
          state.processingState == ProcessingState.buffering) {
        return AudioPlaybackState.loading;
      } else if (state.processingState == ProcessingState.completed) {
        return AudioPlaybackState.completed;
      } else {
        return AudioPlaybackState.paused;
      }
    }).asBroadcastStream();
    return _playbackStateStream!;
  }

  Future<void> loadTrack(AudioTrack track) async {
    final source = track.localPath != null
        ? AudioSource.file(track.localPath!)
        : AudioSource.uri(Uri.parse(track.audioUrl));

    await _player.setAudioSource(
      ConcatenatingAudioSource(children: [source]),
    );
  }

  Future<void> loadPlaylist(
    List<AudioTrack> tracks, {
    int initialIndex = 0,
  }) async {
    final sources = tracks.map((track) {
      if (track.localPath != null) {
        return AudioSource.file(track.localPath!);
      }
      return AudioSource.uri(Uri.parse(track.audioUrl));
    }).toList();

    await _player.setAudioSource(
      ConcatenatingAudioSource(
        children: sources,
      ),
      initialIndex: initialIndex,
    );
  }

  Future<void> play() => _player.play();
  Future<void> pause() => _player.pause();
  Future<void> stop() => _player.stop();
  Future<void> seek(Duration position) => _player.seek(position);
  Future<void> seekForward(Duration amount) async {
    final newPosition = _player.position + amount;
    final duration = _player.duration ?? Duration.zero;
    if (newPosition < duration) {
      await _player.seek(newPosition);
    }
  }

  Future<void> seekBackward(Duration amount) async {
    final newPosition = _player.position - amount;
    if (newPosition > Duration.zero) {
      await _player.seek(newPosition);
    } else {
      await _player.seek(Duration.zero);
    }
  }

  Future<void> playNext() async {
    if (_player.hasNext) {
      await _player.seekToNext();
    }
  }

  Future<void> playPrevious() async {
    if (_player.hasPrevious) {
      await _player.seekToPrevious();
    }
  }

  Future<void> setLoopMode(LoopMode mode) async {
    _player.setLoopMode(mode);
  }

  Future<void> setSpeed(double speed) async {
    await _player.setSpeed(speed);
  }

  bool get isPlaying => _player.playing;
  bool get hasNext => _player.hasNext;
  bool get hasPrevious => _player.hasPrevious;
  Duration get position => _player.position;
  Duration? get duration => _player.duration;

  Future<void> dispose() => _player.dispose();
}
