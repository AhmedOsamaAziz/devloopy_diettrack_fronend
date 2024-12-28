import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:ui/model/testimonials/testimonial_base.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:ui/widgets/custom_text.dart';
import 'package:ui/Constants/constants.dart';
import 'package:ui/core/assets.dart';

class TestimonialsCustomCard extends StatefulWidget {
  final TestimonialBase testimonial;

  const TestimonialsCustomCard({super.key, required this.testimonial});

  @override
  _TestimonialsCustomCardState createState() => _TestimonialsCustomCardState();
}

class _TestimonialsCustomCardState extends State<TestimonialsCustomCard> {
  late YoutubePlayerController _youtubeController;

  @override
  void initState() {
    super.initState();

    // Extract video ID from the YouTube URL
    final videoId =
        YoutubePlayerController.convertUrlToId(widget.testimonial.videoUrl);

    if (videoId == null) {
      throw Exception('Invalid YouTube URL');
    }

    _youtubeController = YoutubePlayerController(
      initialVideoId: videoId,
      params: const YoutubePlayerParams(
        autoPlay: false,
        mute: false,
        showControls: true,
        loop: false,
      ),
    );
  }

  @override
  void dispose() {
    _youtubeController.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Column(
        spacing: 10,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            Assets.imagesIconComment,
            height: 40,
            width: 40,
          ),
          CustomText(
            text: widget.testimonial.title,
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: ColorsApp.TextColor,
          ),
          CustomText(
            text: widget.testimonial.description,
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: ColorsApp.TextColor,
          ),
          SizedBox(
            height: 300,
            width: 300,
            child: YoutubePlayerIFrame(
              controller: _youtubeController,
              aspectRatio: 16 / 9,
              gestureRecognizers: <Factory<OneSequenceGestureRecognizer>>{
                Factory<VerticalDragGestureRecognizer>(
                  () => VerticalDragGestureRecognizer(),
                ),
              },
            ),
          ),
        ],
      ),
    );
  }
}
