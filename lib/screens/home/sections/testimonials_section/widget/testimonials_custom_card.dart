import 'dart:async';
import 'package:flutter/material.dart';
import 'package:ui/core/assets.dart';
import 'package:ui/model/testimonials/testimonial_base.dart';
import 'package:ui/widgets/custom_text.dart';
import 'package:ui/Constants/constants.dart';
import 'package:video_player/video_player.dart';

class TestimonialsCustomCard extends StatefulWidget {
  final TestimonialBase testimonial;

  const TestimonialsCustomCard({super.key, required this.testimonial});

  @override
  _TestimonialsCustomCardState createState() => _TestimonialsCustomCardState();
}

class _TestimonialsCustomCardState extends State<TestimonialsCustomCard> {
  late VideoPlayerController _controller;
  String? _errorMessage;
  double _volume = 1.0;
  bool _showControls = true;
  Timer? _hideControlsTimer;

  @override
  void initState() {
    super.initState();
    // Use a known good video URL for testing
    final videoUrl = widget.testimonial.videoUrl.isNotEmpty
        ? 'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4'
        : widget.testimonial.videoUrl;

    _controller = VideoPlayerController.network(videoUrl)
      ..initialize().then((_) {
        setState(() {});
      }).catchError((error) {
        setState(() {
          _errorMessage = 'Failed to load video: $error';
        });
        print('Video load error: $error');
      });

    _controller.setLooping(false); // Disable looping

    _controller.addListener(() {
      if (_controller.value.hasError) {
        setState(() {
          _errorMessage = _controller.value.errorDescription;
        });
        print('Video player error: ${_controller.value.errorDescription}');
      }

      // Check if the video has finished playing
      if (_controller.value.position == _controller.value.duration) {
        setState(() {
          _showControls = true;
        });
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    _hideControlsTimer?.cancel();
    super.dispose();
  }

  void _toggleControls() {
    setState(() {
      _showControls = true;
      _startHideControlsTimer();
    });
  }

  void _startHideControlsTimer() {
    _hideControlsTimer?.cancel();
    _hideControlsTimer = Timer(const Duration(seconds: 5), () {
      setState(() {
        _showControls = false;
      });
    });
  }

  void _togglePlayPause() {
    setState(() {
      if (_controller.value.isPlaying) {
        _controller.pause();
      } else {
        _controller.play();
        _startHideControlsTimer();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          Assets.imagesIconComment,
          height: 40,
          width: 40,
        ),
        const SizedBox(height: 20),
        CustomText(
          text: widget.testimonial.title,
          fontSize: 14,
          fontWeight: FontWeight.w500,
          color: ColorsApp.TextColor,
        ),
        const SizedBox(height: 10),
        CustomText(
          text: widget.testimonial.description,
          fontSize: 12,
          fontWeight: FontWeight.w400,
          color: ColorsApp.TextColor,
        ),
        const SizedBox(height: 20),
        Expanded(
          child: GestureDetector(
            onTap: () {
              _togglePlayPause();
              _toggleControls();
            },
            child: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  child: _controller.value.isInitialized
                      ? AspectRatio(
                          aspectRatio: _controller.value.aspectRatio,
                          child: VideoPlayer(_controller),
                        )
                      : _errorMessage != null
                          ? Center(child: Text(_errorMessage!))
                          : Image.asset(Assets.imagesMap, fit: BoxFit.cover),
                ),
                if (_showControls)
                  Center(
                    child: IconButton(
                      icon: Icon(
                        _controller.value.isPlaying
                            ? Icons.pause_circle_filled
                            : Icons.play_circle_filled,
                        color: ColorsApp.AppBarColor,
                        size: 35,
                      ),
                      onPressed: _togglePlayPause,
                    ),
                  ),
                if (_showControls)
                  Positioned(
                    bottom: 20,
                    left: 10,
                    right: 10,
                    child: Slider(
                      activeColor: ColorsApp.AppBarColor,
                      value: _volume,
                      min: 0.0,
                      max: 1.0,
                      divisions: 10,
                      label: 'Volume: ${(_volume * 100).toInt()}%',
                      onChanged: (value) {
                        setState(() {
                          _volume = value;
                          _controller.setVolume(_volume);
                        });
                      },
                    ),
                  ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
