import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:quran_app/features/audio/application/services/audio_player_manager.dart';
import 'package:quran_app/features/audio/data/repositories/audio_repository_impl.dart';
import 'package:quran_app/features/audio/domain/entities/reciter.dart';

final audioPlayerManagerProvider = Provider<AudioPlayerManager>((ref) {
  final manager = AudioPlayerManager();
  ref.onDispose(manager.dispose);
  return manager;
});

final selectedReciterSlugProvider = StateProvider<String?>((ref) => null);

final audioPlaybackStateProvider = StreamProvider<AudioPlaybackState>((ref) {
  final manager = ref.watch(audioPlayerManagerProvider);
  return manager.playbackStateStream;
});

final audioPositionProvider = StreamProvider<Duration>((ref) {
  final manager = ref.watch(audioPlayerManagerProvider);
  return manager.positionStream;
});

final audioDurationProvider = StreamProvider<Duration?>((ref) {
  final manager = ref.watch(audioPlayerManagerProvider);
  return manager.durationStream;
});

final currentReciterProvider = StateProvider<Reciter?>((ref) => null);
final currentSurahIdProvider = StateProvider<int?>((ref) => null);

final recitersProvider = FutureProvider<List<Reciter>>((ref) async {
  final repo = ref.watch(audioRepositoryProvider);
  final result = await repo.getReciters();
  return result.fold(
    (failure) => throw Exception(failure.message),
    (reciters) => reciters,
  );
});
