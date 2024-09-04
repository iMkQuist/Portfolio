import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/intro/components/subtitle_text.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import '../../../view_model/responsive.dart';

class CombineSubtitleText extends StatelessWidget {
  const CombineSubtitleText({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const Responsive(
          desktop: AnimatedSubtitleText(start: 30, end: 40, text: 'Bismark '),
          largeMobile:
              AnimatedSubtitleText(start: 30, end: 25, text: 'Bismark '),
          mobile: AnimatedSubtitleText(start: 25, end: 20, text: 'Bismark '),
          tablet: AnimatedSubtitleText(start: 40, end: 30, text: 'Bismark '),
        ),
        (kIsWeb && Responsive.isLargeMobile(context)
            ? const Responsive(
                desktop: AnimatedSubtitleText(
                    start: 30, end: 40, text: 'Quist ', gradient: true),
                largeMobile: AnimatedSubtitleText(
                    start: 30, end: 25, text: 'Quist ', gradient: true),
                mobile: AnimatedSubtitleText(
                    start: 25, end: 20, text: 'Quist ', gradient: true),
                tablet: AnimatedSubtitleText(
                    start: 40, end: 30, text: 'Quist ', gradient: true),
              )
            : ShaderMask(
                shaderCallback: (bounds) {
                  return const LinearGradient(colors: [
                    Colors.pink,
                    Colors.blue,
                  ]).createShader(bounds);
                },
                child: const Responsive(
                  desktop: AnimatedSubtitleText(
                      start: 30, end: 40, text: 'Quist ', gradient: false),
                  largeMobile: AnimatedSubtitleText(
                      start: 30, end: 25, text: 'Quist ', gradient: false),
                  mobile: AnimatedSubtitleText(
                      start: 25, end: 20, text: 'Quist ', gradient: true),
                  tablet: AnimatedSubtitleText(
                      start: 40, end: 30, text: 'Quist ', gradient: false),
                ),
              ))
      ],
    );
  }
}
