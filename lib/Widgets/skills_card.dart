import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/Data/skills.dart';

class SkillsCard extends StatelessWidget {
  const SkillsCard({
    super.key,
    required this.style,
  });

  final TextTheme style;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Column(
            children: [
              AutoSizeText(
                'Skills & Expertise',
                maxLines: 1,
                style: style.headlineMedium,
              ),
              const SizedBox(height: 15),
              Wrap(
                children: List.generate(
                  skills.length,
                  (index) {
                    return Padding(
                      padding: const EdgeInsets.all(4),
                      child: Chip(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 5,
                          vertical: 2,
                        ),
                        side: BorderSide.none,
                        shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(20),
                        ),
                        label: Text(
                          skills[index],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

