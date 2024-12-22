// import 'package:bloc/bloc.dart';
// import 'package:video_player/video_player.dart';
// import 'videoplay_state.dart';

// class VideoPlayerCubit extends Cubit<VideoPlayerState> {
//   VideoPlayerCubit(String videoUrl)
//       : super(VideoPlayerState(
//           controller: VideoPlayerController.network(videoUrl),
//           isPlaying: false,
//           isPaused: false,
//         )) {
//     _initialize();
//   }

//   Future<void> _initialize() async {
//     try {
//       await state.controller.initialize();
//       emit(VideoPlayerState(
//         controller: state.controller,
//         isPlaying: false,
//         isPaused: false,
//       ));
//     } catch (error) {
//       emit(VideoPlayerState(
//         controller: state.controller,
//         isPlaying: false,
//         isPaused: false,
//         errorMessage: 'Failed to load video: $error',
//       ));
//     }

//     state.controller.addListener(() {
//       if (state.controller.value.hasError) {
//         emit(VideoPlayerState(
//           controller: state.controller,
//           isPlaying: false,
//           isPaused: false,
//           errorMessage: state.controller.value.errorDescription,
//         ));
//       }
//     });
//   }

//   void playPause() {
//     if (state.isPlaying) {
//       state.controller.pause();
//       emit(VideoPlayerState(
//         controller: state.controller,
//         isPlaying: false,
//         isPaused: true,
//       ));
//     } else {
//       state.controller.play();
//       emit(VideoPlayerState(
//         controller: state.controller,
//         isPlaying: true,
//         isPaused: false,
//       ));
//     }
//   }

//   void setVolume(double volume) {
//     state.controller.setVolume(volume);
//   }

//   void setPlaybackSpeed(double speed) {
//     state.controller.setPlaybackSpeed(speed);
//   }

//   @override
//   Future<void> close() {
//     state.controller.dispose();
//     return super.close();
//   }
// }
