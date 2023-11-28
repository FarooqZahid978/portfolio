import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:portfolio/Widgets/appbar.dart';
import 'package:portfolio/Widgets/contact_card.dart';
import 'package:portfolio/Widgets/experience_card.dart';
import 'package:portfolio/Widgets/skills_card.dart';

class DesktopScaffold extends StatefulWidget {
  const DesktopScaffold({super.key});

  @override
  State<DesktopScaffold> createState() => _DesktopScaffoldState();
}

class _DesktopScaffoldState extends State<DesktopScaffold> {
  @override
  Widget build(BuildContext context) {
    final style = Theme.of(context).textTheme;
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(
          Icons.keyboard_double_arrow_up,
        ),
      ),
      body: Stack(
        children: [
          ListView(
            padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.sizeOf(context).width * 0.15,
            ),
            children: [
              const SizedBox(height: 200),
              const Text('Hey there!'),
              const SizedBox(height: 10),
              Row(
                children: [
                  Expanded(
                    child: AutoSizeText(
                      'I\'m Farooq,a Flutter developer dedicated to creating user-centric designs with meticulous pixel precision',
                      maxLines: 4,
                      overflow: TextOverflow.fade,
                      style: style.bodyLarge,
                    ),
                  ),
                  const SizedBox(width: 50),
                  Container(
                    height: MediaQuery.sizeOf(context).width * 0.2,
                    width: MediaQuery.sizeOf(context).width * 0.2,
                    color: Colors.amber,
                  ),
                ],
              ),
              const SizedBox(height: 30),
              const Text('Available for freelancing  Faisalabad,Pakistan'),
              const SizedBox(height: 50),
              StaggeredGrid.count(
                crossAxisCount: 3,
                mainAxisSpacing: 4,
                crossAxisSpacing: 4,
                children: [
                   StaggeredGridTile.count(
                    crossAxisCellCount: 1,
                    mainAxisCellCount: 1,
                    child: ExperienceCard(style: style),
                  ),
                  StaggeredGridTile.count(
                    crossAxisCellCount: 1,
                    mainAxisCellCount: 1,
                    child: SkillsCard(style: style),
                  ),
                  StaggeredGridTile.count(
                    crossAxisCellCount: 1,
                    mainAxisCellCount: 1,
                    child: ContactCard(style: style),
                  ),
                  StaggeredGridTile.count(
                    crossAxisCellCount: 3,
                    mainAxisCellCount: 2.25,
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Featured Projects',
                              style: style.headlineMedium,
                            ),
                            const SizedBox(height: 10),
                            Expanded(
                              child: GridView.builder(
                                itemCount: 6,
                                gridDelegate:
                                    const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 3,
                                  mainAxisSpacing: 4,
                                  crossAxisSpacing: 4,
                                ),
                                itemBuilder: (context, index) {
                                  return const Card(
                                    color: Colors.black26,
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const StaggeredGridTile.count(
                    crossAxisCellCount: 3,
                    mainAxisCellCount: 1,
                    child: Card(),
                  ),
                ],
              ),
              const SizedBox(height: 50),
            ],
          ),
          const PortfolioAppbar(),
        ],
      ),
    );
  }
}



