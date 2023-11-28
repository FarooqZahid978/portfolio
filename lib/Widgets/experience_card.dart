import 'package:flutter/material.dart';

class ExperienceCard extends StatelessWidget {
  const ExperienceCard({
    super.key,
    required this.style,
  });

  final TextTheme style;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 25),
          child: Column(
            children: [
              Text(
                'Experience',
                style: style.headlineMedium,
              ),
              const SizedBox(height: 20),
              ListTile(
                leading: const CircleAvatar(),
                title: Text(
                  'Chat App',
                  style: style.labelLarge,
                ),
              ),
              ListTile(
                leading: const CircleAvatar(),
                title: Text(
                  'Task Management App',
                  style: style.labelLarge,
                ),
              ),
              ListTile(
                leading: const CircleAvatar(),
                title: Text(
                  'Ecomerce App',
                  style: style.labelLarge,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
