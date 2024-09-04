import 'package:flutter/material.dart';

import 'knowledge.dart';

class Knowledges extends StatelessWidget {
  const Knowledges({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Text(
            'Knowledge',
            style: TextStyle(color: Colors.white),
          ),
        ),
        KnowledgeText(knowledge: 'Flutter'),
        KnowledgeText(knowledge: 'Networking'),
        KnowledgeText(knowledge: 'Git, Github'),
        KnowledgeText(knowledge: 'Django, Python'),
        KnowledgeText(knowledge: 'Web Development'),
        KnowledgeText(knowledge: 'ReactJS'),
        KnowledgeText(knowledge: 'Database, SQL'),
        KnowledgeText(knowledge: 'UI/UX, AdobeXD'),
        KnowledgeText(knowledge: 'Computer Programming'),
      ],
    );
  }
}
