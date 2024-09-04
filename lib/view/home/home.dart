import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/certifications/certifications.dart';
import 'package:flutter_application_1/view/intro/introduction.dart';
import 'package:flutter_application_1/view/main/components/about_context.dart';
import 'package:flutter_application_1/view/main/components/achievements.dart';
import 'package:flutter_application_1/view/main/main_view.dart';
import 'package:flutter_application_1/view/projects/projects_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MainView(pages: [
      const Introduction(),
      ProjectsView(),
      Certifications(),
      const AboutContext(),
      const Achievements(),
    ]);
  }
}
