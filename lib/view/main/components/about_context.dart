import 'package:flutter/material.dart';
import 'package:flutter_application_1/res/constants.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AboutContext extends StatelessWidget {
  const AboutContext({super.key});

  Future<void> _launchEmail() async {
    final Uri emailUri = Uri(
      scheme: 'mailto',
      path: 'quistbismark7@gmail.com', // Replace with your email address
      queryParameters: {
        'subject':
            'I want to know about your area of expectise', // Optional: Add a subject line to the email
      },
    );
    if (await canLaunchUrl(emailUri)) {
      await launchUrl(emailUri);
    } else {
      throw 'Could not launch email app';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  'About Me',
                  style: TextStyle(
                    color: bodyTextColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 24.0,
                  ),
                ),
                const SizedBox(height: 12.0),
                const Text(
                  'Hello! I am Bismark Quist, a passionate computer science student and a programmer and also an app developer having a strong deep interest in software development. With a little background knowlegde in computer science and IOT, I am dedicated to become a valued Data Scientist or a Software Engineer.\n'
                  'I enjoy playing basketball as my hobby and mind rackling games such as chess, rubiks cube, scrubbles, and I am always looking for new challenges and opportunities to grow and contribute to the technological world as a whole and to expand my horizon to knowing more.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: bodyTextColor,
                    fontWeight: FontWeight.normal,
                    fontSize: 16.0,
                  ),
                ),
                const SizedBox(
                    height: 20.0), // Add space before the next section
                const Text(
                  'You want to know more about me?\n'
                  'Feel free to reach out to me.',
                  style: TextStyle(
                    color: bodyTextColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                  ),
                ),
                const SizedBox(height: 12.0),

                // Container with decoration for the "Send Email" section
                GestureDetector(
                  onTap: _launchEmail,
                  child: Container(
                    constraints: const BoxConstraints(
                      maxWidth: 250.0, // Set the maximum width you desire
                    ),
                    padding: const EdgeInsets.symmetric(
                        vertical: 8.0, horizontal: 16.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(defaultPadding),
                      gradient: LinearGradient(
                        colors: [
                          Colors.pink,
                          Colors.blue.shade900,
                        ],
                      ),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.blue,
                          offset: Offset(0, -1),
                          blurRadius: defaultPadding / 4,
                        ),
                        BoxShadow(
                          color: Colors.red,
                          offset: Offset(0, 1),
                          blurRadius: defaultPadding / 4,
                        ),
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Icon(
                          FontAwesomeIcons.envelope,
                          color: Colors.greenAccent,
                          size: 20, // Adjust size as needed
                        ),
                        const SizedBox(width: defaultPadding / 4),
                        Text(
                          'Send Email',
                          style:
                              Theme.of(context).textTheme.labelSmall!.copyWith(
                                    color: Colors.white,
                                    letterSpacing: 1.2,
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
