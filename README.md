# 📐 CAD Icons Flutter (`cad_icons_flutter`)

[![pub package](https://img.shields.io/pub/v/cad_icons_flutter.svg)](https://pub.dev/packages/cad_icons_flutter)
[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](https://opensource.org/licenses/MIT)
[![GitHub stars](https://img.shields.io/github/stars/MadalyImbate/cad-icons-flutter.svg?style=social)](https://github.com/MadalyImbate/cad-icons-flutter)

An ultra-lightweight, production-ready Flutter package containing **250+ technical CAD vector icons**. Designed for seamless, native compatibility with Flutter's Material `IconTheme` and featuring **instant hover previews** in VS Code, Android Studio, and pub.dev documentation.

🌐 **[Live Interactive Online Catalog](https://madalyimbate.github.io/cad-icons-flutter/)** — Search, preview, and test colors for all 250+ icons in real time!

---

## ✨ Features

- 🎯 **Dual Ergonomic API:** Pass `CadIcon.select` directly as a `Widget` OR use `CadIcons(CadIcon.select)`.
- 📦 **Zero-Config Asset Setup:** All 250+ SVG icons are bundled inside the package. No need to copy files or register paths in your host app's `pubspec.yaml`.
- 🎨 **Native `IconTheme` Compatibility:** Icons automatically inherit ambient colors and sizes from `IconTheme`, `ThemeData`, and Material widgets (`AppBar`, `IconButton`, etc.).
- 🔍 **IDE Hover Previews:** Every `CadIcon` entry contains a remote SVG link in its doc comments, enabling sharp visual previews directly inside VS Code and Android Studio tooltips!
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
  cad_icons_flutter: ^1.0.1
```

---

## 💡 Quick Start

Import the package:

```dart
import 'package:cad_icons_flutter/cad_icons_flutter.dart';
import 'package:flutter/material.dart';
```

### Style 1: Direct `CadIcon` (Concise Widget)
Since `CadIcon` implements `Widget`, you can pass it directly anywhere a `Widget` is expected:

```dart
IconButton(
  tooltip: 'Select',
  icon: CadIcon.select,
  selectedIcon: CadIcon.select(color: Colors.blue),
  onPressed: () {},
)
```

### Style 2: Via `CadIcons` (Wrapper)

```dart
IconButton(
  tooltip: 'Select',
  icon: const CadIcons(CadIcon.select),
  selectedIcon: const ToolBarIcons(ToolsIcon.select, color: Colors.blue),
  onPressed: () {},
)
```

---

## 🎨 `IconTheme` Integration

Just like Flutter's standard `Icon(Icons.star)`, `CadIcon` and `CadIcons` automatically honor ambient `IconTheme`:

```dart
IconTheme(
  data: const IconThemeData(
    size: 28,
    color: Colors.teal,
  ),
  child: Row(
    children: const [
      CadIcon.assemblyExplodedView,
      SizedBox(width: 12),
      CadIcon.constraintParallel,
      SizedBox(width: 12),
      CadIcon.drawCircle,
      SizedBox(width: 12),
      CadIcon.toolpath,
    ],
  ),
)
```

---

## 🔎 Available Icon Categories

Explore all 250+ icons in our **[Online Catalog](https://madalyimbate.github.io/cad-icons-flutter/)**:

| Category | Examples |
|---|---|
| **CAD & Selection** | `CadIcon.select`, `CadIcon.selectNone`, `CadIcon.toolSelection`, `CadIcon.toolSelectionDirect` |
| **3D Solids & Shapes** | `CadIcon.draw3dCube`, `CadIcon.draw3dSphere`, `CadIcon.draw3dCylinder`, `CadIcon.draw3dCone` |
| **Constraints** | `CadIcon.constraintCoincident`, `CadIcon.constraintParallel`, `CadIcon.constraintPerpendicular` |
| **2D Geometry** | `CadIcon.drawCircle`, `CadIcon.drawArc`, `CadIcon.drawRectangle`, `CadIcon.drawSpline` |
| **3D Operations** | `CadIcon.modify3dExtrude`, `CadIcon.modify3dRevolve`, `CadIcon.modify3dLoft`, `CadIcon.modify3dShell` |
| **Measurement & Dimensions** | `CadIcon.measureDistance`, `CadIcon.measureAngle`, `CadIcon.textDimensionAligned` |
| **CAD File Formats** | `CadIcon.fileTypeDwg`, `CadIcon.fileTypeDxf`, `CadIcon.fileTypeStep`, `CadIcon.fileTypeStl` |
| **Manufacturing & CAM** | `CadIcon.cncMilling`, `CadIcon.threeDPrint`, `CadIcon.toolpath`, `CadIcon.toolpathSimulate` |
| **Assemblies & Simulation** | `CadIcon.assemblyExplodedView`, `CadIcon.assemblyJointRevolute`, `CadIcon.simulationStress` |

---

## 📄 License

This package is licensed under the [MIT License](LICENSE).
