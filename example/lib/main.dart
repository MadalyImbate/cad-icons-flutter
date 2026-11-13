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
          // Pattern A: CadIcons widget
          IconButton(
            tooltip: '3D Print',
            icon: const CadIcons(CadIcon.threeDPrint),
            onPressed: () {},
          ),
          // Pattern B: Direct CadIcon widget
          IconButton(
            tooltip: 'Coordinates 3D',
            icon: CadIcon.coordinates3dXyz,
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
              'Sample CAD Toolbar (Supports both CadIcons and CadIcon directly)',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    // User's exact Pattern 1:
                    IconButton(
                      onPressed: () {},
                      isSelected: true,
                      selectedIcon: const ToolBarIcons(
                        ToolsIcon.select,
                        color: Colors.blue,
                      ),
                      icon: const CadIcons(CadIcon.select),
                      tooltip: 'Select (via CadIcons)',
                    ),

                    // User's exact Pattern 2:
                    IconButton(
                      onPressed: () {},
                      isSelected: false,
                      selectedIcon: const ToolBarIcons(
                        ToolsIcon.select,
                        color: Colors.blue,
                      ),
                      icon: CadIcon.select,
                      tooltip: 'Select (direct CadIcon)',
                    ),

                    // Inline override via .call():
                    IconButton(
                      tooltip: 'Extrude 3D',
                      icon: CadIcon.modify3dExtrude(color: Colors.green),
                      onPressed: () {},
                    ),

                    // Measure Distance
                    IconButton(
                      tooltip: 'Measure Distance',
                      icon: CadIcon.measureDistance(color: Colors.deepPurple),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 24),
            const Text(
              'Native IconTheme Compatibility',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            IconTheme(
              data: const IconThemeData(
                size: 32,
                color: Colors.teal,
              ),
              child: Row(
                children: const [
                  CadIcon.assemblyExplodedView,
                  SizedBox(width: 16),
                  CadIcon.constraintParallel,
                  SizedBox(width: 16),
                  CadIcon.drawCircle,
                  SizedBox(width: 16),
                  CadIcon.toolpath,
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
