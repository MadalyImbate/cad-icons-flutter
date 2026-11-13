import 'package:cad_icons_flutter/cad_icons_flutter.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const CadIconsExampleApp());
}

class CadIconsExampleApp extends StatelessWidget {
  const CadIconsExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CAD Icons Flutter Example',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const CadIconsHomeScreen(),
    );
  }
}

class CadIconsHomeScreen extends StatelessWidget {
  const CadIconsHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CAD Icons Flutter'),
        actions: [
          IconButton(
            tooltip: '3D Print',
            icon: const CadIcons(CadIcon.threeDPrint),
            onPressed: () {},
          ),
          IconButton(
            tooltip: 'Coordinates 3D',
            icon: const CadIcons(CadIcon.coordinates3dXyz),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Sample CAD Toolbar',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    IconButton(
                      tooltip: 'Draw 3D Cube',
                      icon: const CadIcons(
                        CadIcon.draw3dCube,
                        color: Colors.blueAccent,
                      ),
                      onPressed: () {},
                    ),
                    IconButton(
                      tooltip: 'Extrude 3D',
                      icon: const CadIcons(
                        CadIcon.modify3dExtrude,
                        color: Colors.green,
                      ),
                      onPressed: () {},
                    ),
                    IconButton(
                      tooltip: 'Fillet / Round',
                      icon: const CadIcons(
                        CadIcon.modifyCornersRound,
                        color: Colors.amber,
                      ),
                      onPressed: () {},
                    ),
                    IconButton(
                      tooltip: 'Measure Distance',
                      icon: const CadIcons(
                        CadIcon.measureDistance,
                        color: Colors.deepPurple,
                      ),
                      onPressed: () {},
                    ),
                    IconButton(
                      tooltip: 'CNC Milling',
                      icon: const CadIcons(
                        CadIcon.cncMilling,
                        color: Colors.redAccent,
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 24),
            const Text(
              'Native IconTheme Compatibility Test',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            IconTheme(
              data: const IconThemeData(
                size: 36,
                color: Colors.teal,
              ),
              child: Row(
                children: const [
                  CadIcons(CadIcon.assemblyExplodedView),
                  SizedBox(width: 16),
                  CadIcons(CadIcon.constraintParallel),
                  SizedBox(width: 16),
                  CadIcons(CadIcon.drawCircle),
                  SizedBox(width: 16),
                  CadIcons(CadIcon.toolpath),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
