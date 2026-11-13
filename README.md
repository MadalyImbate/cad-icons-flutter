# 📐 CAD Icons Flutter (`cad_icons_flutter`)

[![pub package](https://img.shields.io/pub/v/cad_icons_flutter.svg)](https://pub.dev/packages/cad_icons_flutter)
[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](https://opensource.org/licenses/MIT)
[![GitHub stars](https://img.shields.io/github/stars/MadalyImbate/cad-icons-flutter.svg?style=social)](https://github.com/MadalyImbate/cad-icons-flutter)

An ultra-lightweight, production-ready Flutter package containing **250+ technical CAD vector icons**. Designed for seamless, native compatibility with Flutter's Material `IconTheme` and featuring **instant hover previews** in VS Code, Android Studio, and pub.dev documentation.

🌐 **[Live Interactive Online Catalog](https://madalyimbate.github.io/cad-icons-flutter/)** — Search, preview, and test colors for all 250+ icons in real time!

---

## ✨ Features

- 🎯 **Simple, Ergonomic API:** Use `CadIcons(CadIcon.draw3dCube)` directly.
- 📦 **Zero-Config Asset Setup:** All 250+ SVG icons are bundled inside the package. No need to copy files or register paths in your host app's `pubspec.yaml`.
- 🎨 **Native `IconTheme` Compatibility:** The `CadIcons` widget automatically inherits ambient colors and sizes from `IconTheme`, `ThemeData`, and Material widgets (`AppBar`, `IconButton`, etc.).
- 🔍 **IDE Hover Previews:** Every `CadIcon` enum entry contains a remote SVG link in its doc comments, enabling sharp visual previews directly inside VS Code and Android Studio tooltips!
- 🪶 **Ultra-Lightweight:** Only the essential assets and widget code are bundled (~380 KB total package payload).
- 📐 **CAD-Focused Set:** Includes 3D solids, constraints, 2D primitives, dimensions, CAD file formats (DWG, DXF, STEP, STL, OBJ), FEA simulation, topology mesh, toolpaths, and modification tools.

---

## 🚀 Installation

Add `cad_icons_flutter` to your `pubspec.yaml`:

```bash
flutter pub add cad_icons_flutter
```

Or declare it in your `pubspec.yaml`:

```yaml
dependencies:
  flutter:
    sdk: flutter
  cad_icons_flutter: ^1.0.0
```

---

## 💡 Quick Start

```dart
import 'package:cad_icons_flutter/cad_icons_flutter.dart';
import 'package:flutter/material.dart';

// Basic usage:
const icon = CadIcons(CadIcon.draw3dCube);

// Custom size and color:
const customIcon = CadIcons(
  CadIcon.threeDPrint,
  size: 32,
  color: Colors.blueAccent,
);
```

---

## 🎨 `IconTheme` Integration

Just like Flutter's standard `Icon(Icons.star)`, `CadIcons` automatically honors ambient `IconTheme`:

```dart
IconTheme(
  data: const IconThemeData(
    size: 28,
    color: Colors.teal,
  ),
  child: Row(
    children: const [
      CadIcons(CadIcon.assemblyExplodedView),
      SizedBox(width: 12),
      CadIcons(CadIcon.constraintParallel),
      SizedBox(width: 12),
      CadIcons(CadIcon.drawCircle),
      SizedBox(width: 12),
      CadIcons(CadIcon.toolpath),
    ],
  ),
)
```

Inside an `IconButton`:

```dart
IconButton(
  tooltip: 'Extrude 3D',
  icon: const CadIcons(CadIcon.modify3dExtrude),
  onPressed: () {},
)
```

---

## 🔎 Available Icon Categories

Explore all 250+ icons in our **[Online Catalog](https://madalyimbate.github.io/cad-icons-flutter/)**:

| Category | Examples |
|---|---|
| **3D Solids & Shapes** | `CadIcon.draw3dCube`, `CadIcon.draw3dSphere`, `CadIcon.draw3dCylinder`, `CadIcon.draw3dCone` |
| **Constraints** | `CadIcon.constraintCoincident`, `CadIcon.constraintParallel`, `CadIcon.constraintPerpendicular` |
| **2D Geometry** | `CadIcon.drawCircle`, `CadIcon.drawArc`, `CadIcon.drawRectangle`, `CadIcon.drawSpline` |
| **3D Operations** | `CadIcon.modify3dExtrude`, `CadIcon.modify3dRevolve`, `CadIcon.modify3dLoft`, `CadIcon.modify3dShell` |
| **Measurement & Dimensions** | `CadIcon.measureDistance`, `CadIcon.measureAngle`, `CadIcon.textDimensionAligned` |
| **CAD File Formats** | `CadIcon.fileTypeDwg`, `CadIcon.fileTypeDxf`, `CadIcon.fileTypeStep`, `CadIcon.fileTypeStl` |
| **Manufacturing & CAM** | `CadIcon.cncMilling`, `CadIcon.threeDPrint`, `CadIcon.toolpath`, `CadIcon.toolpathSimulate` |
| **Assemblies & Simulation** | `CadIcon.assemblyExplodedView`, `CadIcon.assemblyJointRevolute`, `CadIcon.simulationStress` |

---

## 🛠️ How to Publish to pub.dev (For Maintainer)

To publish this package to [pub.dev](https://pub.dev):

1. **Verify package health:**
   ```bash
   flutter pub get
   flutter analyze
   flutter test
   dart pub publish --dry-run
   ```

2. **Publish:**
   ```bash
   dart pub publish
   ```
   Follow the Google OAuth prompt in your browser to authorize publishing under your pub.dev publisher account.

---

## 📄 License

This package is licensed under the [MIT License](LICENSE).
