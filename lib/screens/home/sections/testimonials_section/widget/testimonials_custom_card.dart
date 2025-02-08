import 'package:flutter/material.dart';
import 'package:ui/constants/constants.dart';
import 'package:ui/constants/assets.dart';
import 'package:ui/model/testimonials/testimonial_base.dart';
import 'package:ui/widgets/custom_text.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'dart:ui_web' as ui_web;

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
    return Container(
      padding: const EdgeInsets.only(right: 14),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(18)),
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
          const SizedBox(height: 10),
          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(18)),
            height: 300,
            width: 300,
            child: YoutubePlayerIFrame(
              controller: _youtubeController,
              aspectRatio: 16 / 9,
            ),
          ),
        ],
      ),
    );
  }
}
