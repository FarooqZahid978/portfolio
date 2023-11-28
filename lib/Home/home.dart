import 'package:flutter/material.dart';


import 'tablet_scaffold.dart';
import 'desktop_scaffold.dart';
import 'mobile_scaffold.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constrains) {
        if (constrains.maxWidth <= 500) {
          return const MobileScaffold();
        } else if (constrains.maxWidth <= 1000) {
          return const TabletScaffold();
        } else {
          return const DesktopScaffold();
        }
      },
    );
  }
}
