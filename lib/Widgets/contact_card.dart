import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ContactCard extends StatelessWidget {
  const ContactCard({
    super.key,
    required this.style,
  });

  final TextTheme style;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 20),
          child: Column(
            children: [
              Text(
                'Connect',
                style: style.headlineMedium,
              ),
              const SizedBox(height: 20),
              _buildContactLink(
                  icon: FontAwesomeIcons.linkedin, title: 'LinkedIn'),
              const SizedBox(height: 20),
              _buildContactLink(
                  icon: FontAwesomeIcons.instagram, title: 'Instgram'),
              const SizedBox(height: 20),
              _buildContactLink(
                  icon: FontAwesomeIcons.facebookMessenger, title: 'Messenger'),
              const SizedBox(height: 20),
              _buildContactLink(
                  icon: FontAwesomeIcons.whatsapp, title: 'Whatsapp'),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildContactLink({required IconData icon, required String title}) {
    return MouseRegion(
      cursor: MaterialStateMouseCursor.clickable,
      child: Row(
        children: [
          Icon(
            icon,
          ),
          const SizedBox(width: 10),
          Text(title),
        ],
      ),
    );
  }
}
