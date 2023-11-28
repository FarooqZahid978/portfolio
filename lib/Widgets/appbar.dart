import 'package:flutter/material.dart';

class PortfolioAppbar extends StatelessWidget {
  const PortfolioAppbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constrains) {
        return Container(
          margin: const EdgeInsets.symmetric(horizontal: 200, vertical: 25),
          height: 55,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Theme.of(context).scaffoldBackgroundColor,
            borderRadius: BorderRadius.circular(8),
          ),
        );
      },
    );
  }
}
