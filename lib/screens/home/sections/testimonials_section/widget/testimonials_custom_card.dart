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

    _controller.addListener(() {
      if (_controller.value.hasError) {
        setState(() {
          _errorMessage = _controller.value.errorDescription;
        });
        print('Video player error: ${_controller.value.errorDescription}');
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
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
        GestureDetector(
          onTap: () {
            setState(() {
              _controller.value.isPlaying
                  ? _controller.pause()
                  : _controller.play();
            });
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
              if (!_controller.value.isPlaying && _errorMessage == null)
                Center(
                  child: Icon(
                    _controller.value.isPlaying
                        ? Icons.pause_circle
                        : Icons.play_circle_fill,
                    color: ColorsApp.MAINCOLOR,
                    size: 50,
                  ),
                ),
            ],
          ),
        ),
      ],
    );
  }
}
