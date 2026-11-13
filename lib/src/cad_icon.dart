// Generated CAD Icons for Flutter
// Total icons: 250

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

/// A CAD vector icon that is both an icon identifier and a ready-to-use [Widget].
///
/// Can be passed directly where a [Widget] is expected:
/// ```dart
/// IconButton(
///   icon: CadIcon.select,
///   selectedIcon: CadIcon.select(color: Colors.blue),
///   onPressed: () {},
/// )
/// ```
///
/// Or used with [CadIcons]:
/// ```dart
/// CadIcons(CadIcon.select)
/// ToolBarIcons(ToolsIcon.select, color: Colors.blue)
/// ```
class CadIcon extends StatelessWidget {
  const CadIcon(
    this.name, {
    super.key,
    this.size,
    this.color,
    this.package = 'cad_icons_flutter',
    this.semanticsLabel,
  });

  /// Name of the icon asset without file extension (e.g. 'select', 'draw-3d-cube').
  final String name;

  /// The size of the icon in logical pixels.
  ///
  /// If null, defaults to ambient [IconTheme.size] or `24.0`.
  final double? size;

  /// The color to use when drawing the icon.
  ///
  /// If null, defaults to ambient [IconTheme.color] or [ColorScheme.onSurface].
  final Color? color;

  /// The package from which the asset should be loaded.
  ///
  /// Defaults to `'cad_icons_flutter'`.
  final String? package;

  /// An optional semantic label for accessibility.
  final String? semanticsLabel;

  /// The SVG file name without extension.
  String get fileName => name;

  /// The asset path inside the package bundle.
  String get assetPath => 'assets/icons/$name.svg';

  /// The remote URL to the vector icon on GitHub for hover previews.
  String get remoteUrl =>
      'https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/$name.svg';

  /// Returns a copy of this icon with the given fields replaced.
  CadIcon copyWith({
    Key? key,
    double? size,
    Color? color,
    String? package,
    String? semanticsLabel,
  }) {
    return CadIcon(
      name,
      key: key ?? this.key,
      size: size ?? this.size,
      color: color ?? this.color,
      package: package ?? this.package,
      semanticsLabel: semanticsLabel ?? this.semanticsLabel,
    );
  }

  /// Convenience callable: `CadIcon.select(color: Colors.blue, size: 24)`
  CadIcon call({
    Key? key,
    double? size,
    Color? color,
    String? package,
    String? semanticsLabel,
  }) =>
      copyWith(
        key: key,
        size: size,
        color: color,
        package: package,
        semanticsLabel: semanticsLabel,
      );

  @override
  Widget build(BuildContext context) {
    final iconTheme = IconTheme.of(context);
    final c =
        color ?? iconTheme.color ?? Theme.of(context).colorScheme.onSurface;
    final s = size ?? iconTheme.size ?? 24.0;

    return SvgPicture.asset(
      'assets/icons/$name.svg',
      package: package,
      width: s,
      height: s,
      theme: SvgTheme(currentColor: c),
      semanticsLabel: semanticsLabel ?? name,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CadIcon &&
          runtimeType == other.runtimeType &&
          name == other.name &&
          size == other.size &&
          color == other.color &&
          package == other.package;

  @override
  int get hashCode =>
      name.hashCode ^ size.hashCode ^ color.hashCode ^ package.hashCode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) =>
      'CadIcon($name, size: $size, color: $color)';

  // ============================================================
  // Static Const Icon Definitions (250 Icons)
  // ============================================================

  /// ![3d-print](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/3d-print.svg)
  ///
  /// CAD icon for `3d-print`.
  static const CadIcon threeDPrint = CadIcon('3d-print');

  /// ![assembly-exploded-view](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/assembly-exploded-view.svg)
  ///
  /// CAD icon for `assembly-exploded-view`.
  static const CadIcon assemblyExplodedView = CadIcon('assembly-exploded-view');

  /// ![assembly-joint-revolute](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/assembly-joint-revolute.svg)
  ///
  /// CAD icon for `assembly-joint-revolute`.
  static const CadIcon assemblyJointRevolute = CadIcon('assembly-joint-revolute');

  /// ![assembly-joint-slider](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/assembly-joint-slider.svg)
  ///
  /// CAD icon for `assembly-joint-slider`.
  static const CadIcon assemblyJointSlider = CadIcon('assembly-joint-slider');

  /// ![bim](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/bim.svg)
  ///
  /// CAD icon for `bim`.
  static const CadIcon bim = CadIcon('bim');

  /// ![cnc-milling](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/cnc-milling.svg)
  ///
  /// CAD icon for `cnc-milling`.
  static const CadIcon cncMilling = CadIcon('cnc-milling');

  /// ![collision-check](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/collision-check.svg)
  ///
  /// CAD icon for `collision-check`.
  static const CadIcon collisionCheck = CadIcon('collision-check');

  /// ![constraint-coincident](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/constraint-coincident.svg)
  ///
  /// CAD icon for `constraint-coincident`.
  static const CadIcon constraintCoincident = CadIcon('constraint-coincident');

  /// ![constraint-concentric](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/constraint-concentric.svg)
  ///
  /// CAD icon for `constraint-concentric`.
  static const CadIcon constraintConcentric = CadIcon('constraint-concentric');

  /// ![constraint-equal](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/constraint-equal.svg)
  ///
  /// CAD icon for `constraint-equal`.
  static const CadIcon constraintEqual = CadIcon('constraint-equal');

  /// ![constraint-fixed](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/constraint-fixed.svg)
  ///
  /// CAD icon for `constraint-fixed`.
  static const CadIcon constraintFixed = CadIcon('constraint-fixed');

  /// ![constraint-horizontal](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/constraint-horizontal.svg)
  ///
  /// CAD icon for `constraint-horizontal`.
  static const CadIcon constraintHorizontal = CadIcon('constraint-horizontal');

  /// ![constraint-parallel](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/constraint-parallel.svg)
  ///
  /// CAD icon for `constraint-parallel`.
  static const CadIcon constraintParallel = CadIcon('constraint-parallel');

  /// ![constraint-perpendicular](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/constraint-perpendicular.svg)
  ///
  /// CAD icon for `constraint-perpendicular`.
  static const CadIcon constraintPerpendicular = CadIcon('constraint-perpendicular');

  /// ![constraint-symmetric](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/constraint-symmetric.svg)
  ///
  /// CAD icon for `constraint-symmetric`.
  static const CadIcon constraintSymmetric = CadIcon('constraint-symmetric');

  /// ![constraint-tangent](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/constraint-tangent.svg)
  ///
  /// CAD icon for `constraint-tangent`.
  static const CadIcon constraintTangent = CadIcon('constraint-tangent');

  /// ![constraint-vertical](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/constraint-vertical.svg)
  ///
  /// CAD icon for `constraint-vertical`.
  static const CadIcon constraintVertical = CadIcon('constraint-vertical');

  /// ![coordinates-2d-xy](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/coordinates-2d-xy.svg)
  ///
  /// CAD icon for `coordinates-2d-xy`.
  static const CadIcon coordinates2dXy = CadIcon('coordinates-2d-xy');

  /// ![coordinates-2d](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/coordinates-2d.svg)
  ///
  /// CAD icon for `coordinates-2d`.
  static const CadIcon coordinates2d = CadIcon('coordinates-2d');

  /// ![coordinates-3d-xyz](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/coordinates-3d-xyz.svg)
  ///
  /// CAD icon for `coordinates-3d-xyz`.
  static const CadIcon coordinates3dXyz = CadIcon('coordinates-3d-xyz');

  /// ![coordinates-3d](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/coordinates-3d.svg)
  ///
  /// CAD icon for `coordinates-3d`.
  static const CadIcon coordinates3d = CadIcon('coordinates-3d');

  /// ![coordinates-origin](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/coordinates-origin.svg)
  ///
  /// CAD icon for `coordinates-origin`.
  static const CadIcon coordinatesOrigin = CadIcon('coordinates-origin');

  /// ![draw-3d-cone](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/draw-3d-cone.svg)
  ///
  /// CAD icon for `draw-3d-cone`.
  static const CadIcon draw3dCone = CadIcon('draw-3d-cone');

  /// ![draw-3d-cube](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/draw-3d-cube.svg)
  ///
  /// CAD icon for `draw-3d-cube`.
  static const CadIcon draw3dCube = CadIcon('draw-3d-cube');

  /// ![draw-3d-cylinder](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/draw-3d-cylinder.svg)
  ///
  /// CAD icon for `draw-3d-cylinder`.
  static const CadIcon draw3dCylinder = CadIcon('draw-3d-cylinder');

  /// ![draw-3d-hexagonal-prism](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/draw-3d-hexagonal-prism.svg)
  ///
  /// CAD icon for `draw-3d-hexagonal-prism`.
  static const CadIcon draw3dHexagonalPrism = CadIcon('draw-3d-hexagonal-prism');

  /// ![draw-3d-line](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/draw-3d-line.svg)
  ///
  /// CAD icon for `draw-3d-line`.
  static const CadIcon draw3dLine = CadIcon('draw-3d-line');

  /// ![draw-3d-octahedron](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/draw-3d-octahedron.svg)
  ///
  /// CAD icon for `draw-3d-octahedron`.
  static const CadIcon draw3dOctahedron = CadIcon('draw-3d-octahedron');

  /// ![draw-3d-pipe](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/draw-3d-pipe.svg)
  ///
  /// CAD icon for `draw-3d-pipe`.
  static const CadIcon draw3dPipe = CadIcon('draw-3d-pipe');

  /// ![draw-3d-plane](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/draw-3d-plane.svg)
  ///
  /// CAD icon for `draw-3d-plane`.
  static const CadIcon draw3dPlane = CadIcon('draw-3d-plane');

  /// ![draw-3d-pyramid-hexagonal](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/draw-3d-pyramid-hexagonal.svg)
  ///
  /// CAD icon for `draw-3d-pyramid-hexagonal`.
  static const CadIcon draw3dPyramidHexagonal = CadIcon('draw-3d-pyramid-hexagonal');

  /// ![draw-3d-pyramid](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/draw-3d-pyramid.svg)
  ///
  /// CAD icon for `draw-3d-pyramid`.
  static const CadIcon draw3dPyramid = CadIcon('draw-3d-pyramid');

  /// ![draw-3d-rectangular-prism](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/draw-3d-rectangular-prism.svg)
  ///
  /// CAD icon for `draw-3d-rectangular-prism`.
  static const CadIcon draw3dRectangularPrism = CadIcon('draw-3d-rectangular-prism');

  /// ![draw-3d-sphere](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/draw-3d-sphere.svg)
  ///
  /// CAD icon for `draw-3d-sphere`.
  static const CadIcon draw3dSphere = CadIcon('draw-3d-sphere');

  /// ![draw-3d-torus](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/draw-3d-torus.svg)
  ///
  /// CAD icon for `draw-3d-torus`.
  static const CadIcon draw3dTorus = CadIcon('draw-3d-torus');

  /// ![draw-3d-triangular-prism](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/draw-3d-triangular-prism.svg)
  ///
  /// CAD icon for `draw-3d-triangular-prism`.
  static const CadIcon draw3dTriangularPrism = CadIcon('draw-3d-triangular-prism');

  /// ![draw-3d-triangular-pyramid](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/draw-3d-triangular-pyramid.svg)
  ///
  /// CAD icon for `draw-3d-triangular-pyramid`.
  static const CadIcon draw3dTriangularPyramid = CadIcon('draw-3d-triangular-pyramid');

  /// ![draw-arc-3-points](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/draw-arc-3-points.svg)
  ///
  /// CAD icon for `draw-arc-3-points`.
  static const CadIcon drawArc3Points = CadIcon('draw-arc-3-points');

  /// ![draw-arc-center-start-angle](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/draw-arc-center-start-angle.svg)
  ///
  /// CAD icon for `draw-arc-center-start-angle`.
  static const CadIcon drawArcCenterStartAngle = CadIcon('draw-arc-center-start-angle');

  /// ![draw-arc-center-start-end](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/draw-arc-center-start-end.svg)
  ///
  /// CAD icon for `draw-arc-center-start-end`.
  static const CadIcon drawArcCenterStartEnd = CadIcon('draw-arc-center-start-end');

  /// ![draw-arc-center-start-length](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/draw-arc-center-start-length.svg)
  ///
  /// CAD icon for `draw-arc-center-start-length`.
  static const CadIcon drawArcCenterStartLength = CadIcon('draw-arc-center-start-length');

  /// ![draw-arc-start-end-direction](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/draw-arc-start-end-direction.svg)
  ///
  /// CAD icon for `draw-arc-start-end-direction`.
  static const CadIcon drawArcStartEndDirection = CadIcon('draw-arc-start-end-direction');

  /// ![draw-arc-start-end-radius](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/draw-arc-start-end-radius.svg)
  ///
  /// CAD icon for `draw-arc-start-end-radius`.
  static const CadIcon drawArcStartEndRadius = CadIcon('draw-arc-start-end-radius');

  /// ![draw-arc](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/draw-arc.svg)
  ///
  /// CAD icon for `draw-arc`.
  static const CadIcon drawArc = CadIcon('draw-arc');

  /// ![draw-boundaries](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/draw-boundaries.svg)
  ///
  /// CAD icon for `draw-boundaries`.
  static const CadIcon drawBoundaries = CadIcon('draw-boundaries');

  /// ![draw-circle-2-points](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/draw-circle-2-points.svg)
  ///
  /// CAD icon for `draw-circle-2-points`.
  static const CadIcon drawCircle2Points = CadIcon('draw-circle-2-points');

  /// ![draw-circle-3-points](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/draw-circle-3-points.svg)
  ///
  /// CAD icon for `draw-circle-3-points`.
  static const CadIcon drawCircle3Points = CadIcon('draw-circle-3-points');

  /// ![draw-circle-diameter](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/draw-circle-diameter.svg)
  ///
  /// CAD icon for `draw-circle-diameter`.
  static const CadIcon drawCircleDiameter = CadIcon('draw-circle-diameter');

  /// ![draw-circle-radius](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/draw-circle-radius.svg)
  ///
  /// CAD icon for `draw-circle-radius`.
  static const CadIcon drawCircleRadius = CadIcon('draw-circle-radius');

  /// ![draw-circle](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/draw-circle.svg)
  ///
  /// CAD icon for `draw-circle`.
  static const CadIcon drawCircle = CadIcon('draw-circle');

  /// ![draw-divide](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/draw-divide.svg)
  ///
  /// CAD icon for `draw-divide`.
  static const CadIcon drawDivide = CadIcon('draw-divide');

  /// ![draw-ellipse-3-points](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/draw-ellipse-3-points.svg)
  ///
  /// CAD icon for `draw-ellipse-3-points`.
  static const CadIcon drawEllipse3Points = CadIcon('draw-ellipse-3-points');

  /// ![draw-ellipse-arc](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/draw-ellipse-arc.svg)
  ///
  /// CAD icon for `draw-ellipse-arc`.
  static const CadIcon drawEllipseArc = CadIcon('draw-ellipse-arc');

  /// ![draw-ellipse-center-2-points](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/draw-ellipse-center-2-points.svg)
  ///
  /// CAD icon for `draw-ellipse-center-2-points`.
  static const CadIcon drawEllipseCenter2Points = CadIcon('draw-ellipse-center-2-points');

  /// ![draw-ellipse](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/draw-ellipse.svg)
  ///
  /// CAD icon for `draw-ellipse`.
  static const CadIcon drawEllipse = CadIcon('draw-ellipse');

  /// ![draw-gradient](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/draw-gradient.svg)
  ///
  /// CAD icon for `draw-gradient`.
  static const CadIcon drawGradient = CadIcon('draw-gradient');

  /// ![draw-hatches](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/draw-hatches.svg)
  ///
  /// CAD icon for `draw-hatches`.
  static const CadIcon drawHatches = CadIcon('draw-hatches');

  /// ![draw-line-dashes](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/draw-line-dashes.svg)
  ///
  /// CAD icon for `draw-line-dashes`.
  static const CadIcon drawLineDashes = CadIcon('draw-line-dashes');

  /// ![draw-line-infinite](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/draw-line-infinite.svg)
  ///
  /// CAD icon for `draw-line-infinite`.
  static const CadIcon drawLineInfinite = CadIcon('draw-line-infinite');

  /// ![draw-line](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/draw-line.svg)
  ///
  /// CAD icon for `draw-line`.
  static const CadIcon drawLine = CadIcon('draw-line');

  /// ![draw-point](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/draw-point.svg)
  ///
  /// CAD icon for `draw-point`.
  static const CadIcon drawPoint = CadIcon('draw-point');

  /// ![draw-points](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/draw-points.svg)
  ///
  /// CAD icon for `draw-points`.
  static const CadIcon drawPoints = CadIcon('draw-points');

  /// ![draw-polygon-2-points](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/draw-polygon-2-points.svg)
  ///
  /// CAD icon for `draw-polygon-2-points`.
  static const CadIcon drawPolygon2Points = CadIcon('draw-polygon-2-points');

  /// ![draw-polygon](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/draw-polygon.svg)
  ///
  /// CAD icon for `draw-polygon`.
  static const CadIcon drawPolygon = CadIcon('draw-polygon');

  /// ![draw-polyline](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/draw-polyline.svg)
  ///
  /// CAD icon for `draw-polyline`.
  static const CadIcon drawPolyline = CadIcon('draw-polyline');

  /// ![draw-rectangle-2-points](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/draw-rectangle-2-points.svg)
  ///
  /// CAD icon for `draw-rectangle-2-points`.
  static const CadIcon drawRectangle2Points = CadIcon('draw-rectangle-2-points');

  /// ![draw-rectangle](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/draw-rectangle.svg)
  ///
  /// CAD icon for `draw-rectangle`.
  static const CadIcon drawRectangle = CadIcon('draw-rectangle');

  /// ![draw-region](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/draw-region.svg)
  ///
  /// CAD icon for `draw-region`.
  static const CadIcon drawRegion = CadIcon('draw-region');

  /// ![draw-spline-control-vertices](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/draw-spline-control-vertices.svg)
  ///
  /// CAD icon for `draw-spline-control-vertices`.
  static const CadIcon drawSplineControlVertices = CadIcon('draw-spline-control-vertices');

  /// ![draw-spline](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/draw-spline.svg)
  ///
  /// CAD icon for `draw-spline`.
  static const CadIcon drawSpline = CadIcon('draw-spline');

  /// ![draw-square-2-points](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/draw-square-2-points.svg)
  ///
  /// CAD icon for `draw-square-2-points`.
  static const CadIcon drawSquare2Points = CadIcon('draw-square-2-points');

  /// ![draw-square](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/draw-square.svg)
  ///
  /// CAD icon for `draw-square`.
  static const CadIcon drawSquare = CadIcon('draw-square');

  /// ![draw-star](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/draw-star.svg)
  ///
  /// CAD icon for `draw-star`.
  static const CadIcon drawStar = CadIcon('draw-star');

  /// ![draw-torus](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/draw-torus.svg)
  ///
  /// CAD icon for `draw-torus`.
  static const CadIcon drawTorus = CadIcon('draw-torus');

  /// ![drawing-animation](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/drawing-animation.svg)
  ///
  /// CAD icon for `drawing-animation`.
  static const CadIcon drawingAnimation = CadIcon('drawing-animation');

  /// ![drawing-rendering](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/drawing-rendering.svg)
  ///
  /// CAD icon for `drawing-rendering`.
  static const CadIcon drawingRendering = CadIcon('drawing-rendering');

  /// ![drawing-walkthrough](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/drawing-walkthrough.svg)
  ///
  /// CAD icon for `drawing-walkthrough`.
  static const CadIcon drawingWalkthrough = CadIcon('drawing-walkthrough');

  /// ![file-drawing-2d](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/file-drawing-2d.svg)
  ///
  /// CAD icon for `file-drawing-2d`.
  static const CadIcon fileDrawing2d = CadIcon('file-drawing-2d');

  /// ![file-drawing-3d](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/file-drawing-3d.svg)
  ///
  /// CAD icon for `file-drawing-3d`.
  static const CadIcon fileDrawing3d = CadIcon('file-drawing-3d');

  /// ![file-drawing](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/file-drawing.svg)
  ///
  /// CAD icon for `file-drawing`.
  static const CadIcon fileDrawing = CadIcon('file-drawing');

  /// ![file-type-3dm](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/file-type-3dm.svg)
  ///
  /// CAD icon for `file-type-3dm`.
  static const CadIcon fileType3dm = CadIcon('file-type-3dm');

  /// ![file-type-3ds](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/file-type-3ds.svg)
  ///
  /// CAD icon for `file-type-3ds`.
  static const CadIcon fileType3ds = CadIcon('file-type-3ds');

  /// ![file-type-3mf](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/file-type-3mf.svg)
  ///
  /// CAD icon for `file-type-3mf`.
  static const CadIcon fileType3mf = CadIcon('file-type-3mf');

  /// ![file-type-amf](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/file-type-amf.svg)
  ///
  /// CAD icon for `file-type-amf`.
  static const CadIcon fileTypeAmf = CadIcon('file-type-amf');

  /// ![file-type-asm](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/file-type-asm.svg)
  ///
  /// CAD icon for `file-type-asm`.
  static const CadIcon fileTypeAsm = CadIcon('file-type-asm');

  /// ![file-type-cad](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/file-type-cad.svg)
  ///
  /// CAD icon for `file-type-cad`.
  static const CadIcon fileTypeCad = CadIcon('file-type-cad');

  /// ![file-type-col](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/file-type-col.svg)
  ///
  /// CAD icon for `file-type-col`.
  static const CadIcon fileTypeCol = CadIcon('file-type-col');

  /// ![file-type-dae](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/file-type-dae.svg)
  ///
  /// CAD icon for `file-type-dae`.
  static const CadIcon fileTypeDae = CadIcon('file-type-dae');

  /// ![file-type-dgn](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/file-type-dgn.svg)
  ///
  /// CAD icon for `file-type-dgn`.
  static const CadIcon fileTypeDgn = CadIcon('file-type-dgn');

  /// ![file-type-dwf](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/file-type-dwf.svg)
  ///
  /// CAD icon for `file-type-dwf`.
  static const CadIcon fileTypeDwf = CadIcon('file-type-dwf');

  /// ![file-type-dwg](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/file-type-dwg.svg)
  ///
  /// CAD icon for `file-type-dwg`.
  static const CadIcon fileTypeDwg = CadIcon('file-type-dwg');

  /// ![file-type-dxf](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/file-type-dxf.svg)
  ///
  /// CAD icon for `file-type-dxf`.
  static const CadIcon fileTypeDxf = CadIcon('file-type-dxf');

  /// ![file-type-f3d](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/file-type-f3d.svg)
  ///
  /// CAD icon for `file-type-f3d`.
  static const CadIcon fileTypeF3d = CadIcon('file-type-f3d');

  /// ![file-type-fbx](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/file-type-fbx.svg)
  ///
  /// CAD icon for `file-type-fbx`.
  static const CadIcon fileTypeFbx = CadIcon('file-type-fbx');

  /// ![file-type-glb](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/file-type-glb.svg)
  ///
  /// CAD icon for `file-type-glb`.
  static const CadIcon fileTypeGlb = CadIcon('file-type-glb');

  /// ![file-type-gltf](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/file-type-gltf.svg)
  ///
  /// CAD icon for `file-type-gltf`.
  static const CadIcon fileTypeGltf = CadIcon('file-type-gltf');

  /// ![file-type-iam](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/file-type-iam.svg)
  ///
  /// CAD icon for `file-type-iam`.
  static const CadIcon fileTypeIam = CadIcon('file-type-iam');

  /// ![file-type-ifc](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/file-type-ifc.svg)
  ///
  /// CAD icon for `file-type-ifc`.
  static const CadIcon fileTypeIfc = CadIcon('file-type-ifc');

  /// ![file-type-iges](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/file-type-iges.svg)
  ///
  /// CAD icon for `file-type-iges`.
  static const CadIcon fileTypeIges = CadIcon('file-type-iges');

  /// ![file-type-igs](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/file-type-igs.svg)
  ///
  /// CAD icon for `file-type-igs`.
  static const CadIcon fileTypeIgs = CadIcon('file-type-igs');

  /// ![file-type-ipt](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/file-type-ipt.svg)
  ///
  /// CAD icon for `file-type-ipt`.
  static const CadIcon fileTypeIpt = CadIcon('file-type-ipt');

  /// ![file-type-jt](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/file-type-jt.svg)
  ///
  /// CAD icon for `file-type-jt`.
  static const CadIcon fileTypeJt = CadIcon('file-type-jt');

  /// ![file-type-obj](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/file-type-obj.svg)
  ///
  /// CAD icon for `file-type-obj`.
  static const CadIcon fileTypeObj = CadIcon('file-type-obj');

  /// ![file-type-pdf](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/file-type-pdf.svg)
  ///
  /// CAD icon for `file-type-pdf`.
  static const CadIcon fileTypePdf = CadIcon('file-type-pdf');

  /// ![file-type-ply](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/file-type-ply.svg)
  ///
  /// CAD icon for `file-type-ply`.
  static const CadIcon fileTypePly = CadIcon('file-type-ply');

  /// ![file-type-prt](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/file-type-prt.svg)
  ///
  /// CAD icon for `file-type-prt`.
  static const CadIcon fileTypePrt = CadIcon('file-type-prt');

  /// ![file-type-sat](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/file-type-sat.svg)
  ///
  /// CAD icon for `file-type-sat`.
  static const CadIcon fileTypeSat = CadIcon('file-type-sat');

  /// ![file-type-skp](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/file-type-skp.svg)
  ///
  /// CAD icon for `file-type-skp`.
  static const CadIcon fileTypeSkp = CadIcon('file-type-skp');

  /// ![file-type-smt](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/file-type-smt.svg)
  ///
  /// CAD icon for `file-type-smt`.
  static const CadIcon fileTypeSmt = CadIcon('file-type-smt');

  /// ![file-type-step](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/file-type-step.svg)
  ///
  /// CAD icon for `file-type-step`.
  static const CadIcon fileTypeStep = CadIcon('file-type-step');

  /// ![file-type-stl](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/file-type-stl.svg)
  ///
  /// CAD icon for `file-type-stl`.
  static const CadIcon fileTypeStl = CadIcon('file-type-stl');

  /// ![file-type-stp](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/file-type-stp.svg)
  ///
  /// CAD icon for `file-type-stp`.
  static const CadIcon fileTypeStp = CadIcon('file-type-stp');

  /// ![file-type-svg](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/file-type-svg.svg)
  ///
  /// CAD icon for `file-type-svg`.
  static const CadIcon fileTypeSvg = CadIcon('file-type-svg');

  /// ![file-type-x3d](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/file-type-x3d.svg)
  ///
  /// CAD icon for `file-type-x3d`.
  static const CadIcon fileTypeX3d = CadIcon('file-type-x3d');

  /// ![file-type-xt](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/file-type-xt.svg)
  ///
  /// CAD icon for `file-type-xt`.
  static const CadIcon fileTypeXt = CadIcon('file-type-xt');

  /// ![floor-plan](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/floor-plan.svg)
  ///
  /// CAD icon for `floor-plan`.
  static const CadIcon floorPlan = CadIcon('floor-plan');

  /// ![generative-design](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/generative-design.svg)
  ///
  /// CAD icon for `generative-design`.
  static const CadIcon generativeDesign = CadIcon('generative-design');

  /// ![grid-points](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/grid-points.svg)
  ///
  /// CAD icon for `grid-points`.
  static const CadIcon gridPoints = CadIcon('grid-points');

  /// ![grid-snap](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/grid-snap.svg)
  ///
  /// CAD icon for `grid-snap`.
  static const CadIcon gridSnap = CadIcon('grid-snap');

  /// ![grid](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/grid.svg)
  ///
  /// CAD icon for `grid`.
  static const CadIcon grid = CadIcon('grid');

  /// ![hatches](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/hatches.svg)
  ///
  /// CAD icon for `hatches`.
  static const CadIcon hatches = CadIcon('hatches');

  /// ![layer](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/layer.svg)
  ///
  /// CAD icon for `layer`.
  static const CadIcon layer = CadIcon('layer');

  /// ![layers-bottom](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/layers-bottom.svg)
  ///
  /// CAD icon for `layers-bottom`.
  static const CadIcon layersBottom = CadIcon('layers-bottom');

  /// ![layers-middle](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/layers-middle.svg)
  ///
  /// CAD icon for `layers-middle`.
  static const CadIcon layersMiddle = CadIcon('layers-middle');

  /// ![layers-top](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/layers-top.svg)
  ///
  /// CAD icon for `layers-top`.
  static const CadIcon layersTop = CadIcon('layers-top');

  /// ![layers](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/layers.svg)
  ///
  /// CAD icon for `layers`.
  static const CadIcon layers = CadIcon('layers');

  /// ![line-width](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/line-width.svg)
  ///
  /// CAD icon for `line-width`.
  static const CadIcon lineWidth = CadIcon('line-width');

  /// ![measure-angle](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/measure-angle.svg)
  ///
  /// CAD icon for `measure-angle`.
  static const CadIcon measureAngle = CadIcon('measure-angle');

  /// ![measure-area](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/measure-area.svg)
  ///
  /// CAD icon for `measure-area`.
  static const CadIcon measureArea = CadIcon('measure-area');

  /// ![measure-distance](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/measure-distance.svg)
  ///
  /// CAD icon for `measure-distance`.
  static const CadIcon measureDistance = CadIcon('measure-distance');

  /// ![measure-quick](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/measure-quick.svg)
  ///
  /// CAD icon for `measure-quick`.
  static const CadIcon measureQuick = CadIcon('measure-quick');

  /// ![measure-radius](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/measure-radius.svg)
  ///
  /// CAD icon for `measure-radius`.
  static const CadIcon measureRadius = CadIcon('measure-radius');

  /// ![measure-volume](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/measure-volume.svg)
  ///
  /// CAD icon for `measure-volume`.
  static const CadIcon measureVolume = CadIcon('measure-volume');

  /// ![measure-wall-thickness](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/measure-wall-thickness.svg)
  ///
  /// CAD icon for `measure-wall-thickness`.
  static const CadIcon measureWallThickness = CadIcon('measure-wall-thickness');

  /// ![measure](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/measure.svg)
  ///
  /// CAD icon for `measure`.
  static const CadIcon measure = CadIcon('measure');

  /// ![mesh-decimate](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/mesh-decimate.svg)
  ///
  /// CAD icon for `mesh-decimate`.
  static const CadIcon meshDecimate = CadIcon('mesh-decimate');

  /// ![mesh-repair](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/mesh-repair.svg)
  ///
  /// CAD icon for `mesh-repair`.
  static const CadIcon meshRepair = CadIcon('mesh-repair');

  /// ![mesh-smooth](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/mesh-smooth.svg)
  ///
  /// CAD icon for `mesh-smooth`.
  static const CadIcon meshSmooth = CadIcon('mesh-smooth');

  /// ![mesh-subdivide](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/mesh-subdivide.svg)
  ///
  /// CAD icon for `mesh-subdivide`.
  static const CadIcon meshSubdivide = CadIcon('mesh-subdivide');

  /// ![mode-2d](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/mode-2d.svg)
  ///
  /// CAD icon for `mode-2d`.
  static const CadIcon mode2d = CadIcon('mode-2d');

  /// ![mode-3d-dimetric-wireframe](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/mode-3d-dimetric-wireframe.svg)
  ///
  /// CAD icon for `mode-3d-dimetric-wireframe`.
  static const CadIcon mode3dDimetricWireframe = CadIcon('mode-3d-dimetric-wireframe');

  /// ![mode-3d-dimetric](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/mode-3d-dimetric.svg)
  ///
  /// CAD icon for `mode-3d-dimetric`.
  static const CadIcon mode3dDimetric = CadIcon('mode-3d-dimetric');

  /// ![mode-3d-isometric-wireframe](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/mode-3d-isometric-wireframe.svg)
  ///
  /// CAD icon for `mode-3d-isometric-wireframe`.
  static const CadIcon mode3dIsometricWireframe = CadIcon('mode-3d-isometric-wireframe');

  /// ![mode-3d-isometric](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/mode-3d-isometric.svg)
  ///
  /// CAD icon for `mode-3d-isometric`.
  static const CadIcon mode3dIsometric = CadIcon('mode-3d-isometric');

  /// ![mode-3d-wireframe](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/mode-3d-wireframe.svg)
  ///
  /// CAD icon for `mode-3d-wireframe`.
  static const CadIcon mode3dWireframe = CadIcon('mode-3d-wireframe');

  /// ![mode-3d](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/mode-3d.svg)
  ///
  /// CAD icon for `mode-3d`.
  static const CadIcon mode3d = CadIcon('mode-3d');

  /// ![model-history](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/model-history.svg)
  ///
  /// CAD icon for `model-history`.
  static const CadIcon modelHistory = CadIcon('model-history');

  /// ![modify-3d-extrude](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/modify-3d-extrude.svg)
  ///
  /// CAD icon for `modify-3d-extrude`.
  static const CadIcon modify3dExtrude = CadIcon('modify-3d-extrude');

  /// ![modify-3d-hole](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/modify-3d-hole.svg)
  ///
  /// CAD icon for `modify-3d-hole`.
  static const CadIcon modify3dHole = CadIcon('modify-3d-hole');

  /// ![modify-3d-loft](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/modify-3d-loft.svg)
  ///
  /// CAD icon for `modify-3d-loft`.
  static const CadIcon modify3dLoft = CadIcon('modify-3d-loft');

  /// ![modify-3d-revolve](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/modify-3d-revolve.svg)
  ///
  /// CAD icon for `modify-3d-revolve`.
  static const CadIcon modify3dRevolve = CadIcon('modify-3d-revolve');

  /// ![modify-3d-rib](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/modify-3d-rib.svg)
  ///
  /// CAD icon for `modify-3d-rib`.
  static const CadIcon modify3dRib = CadIcon('modify-3d-rib');

  /// ![modify-3d-shell](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/modify-3d-shell.svg)
  ///
  /// CAD icon for `modify-3d-shell`.
  static const CadIcon modify3dShell = CadIcon('modify-3d-shell');

  /// ![modify-array-circular](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/modify-array-circular.svg)
  ///
  /// CAD icon for `modify-array-circular`.
  static const CadIcon modifyArrayCircular = CadIcon('modify-array-circular');

  /// ![modify-array-rectangular](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/modify-array-rectangular.svg)
  ///
  /// CAD icon for `modify-array-rectangular`.
  static const CadIcon modifyArrayRectangular = CadIcon('modify-array-rectangular');

  /// ![modify-copy](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/modify-copy.svg)
  ///
  /// CAD icon for `modify-copy`.
  static const CadIcon modifyCopy = CadIcon('modify-copy');

  /// ![modify-corners-bevel](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/modify-corners-bevel.svg)
  ///
  /// CAD icon for `modify-corners-bevel`.
  static const CadIcon modifyCornersBevel = CadIcon('modify-corners-bevel');

  /// ![modify-corners-mitter](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/modify-corners-mitter.svg)
  ///
  /// CAD icon for `modify-corners-mitter`.
  static const CadIcon modifyCornersMitter = CadIcon('modify-corners-mitter');

  /// ![modify-corners-round](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/modify-corners-round.svg)
  ///
  /// CAD icon for `modify-corners-round`.
  static const CadIcon modifyCornersRound = CadIcon('modify-corners-round');

  /// ![modify-delete-duplicate](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/modify-delete-duplicate.svg)
  ///
  /// CAD icon for `modify-delete-duplicate`.
  static const CadIcon modifyDeleteDuplicate = CadIcon('modify-delete-duplicate');

  /// ![modify-distance](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/modify-distance.svg)
  ///
  /// CAD icon for `modify-distance`.
  static const CadIcon modifyDistance = CadIcon('modify-distance');

  /// ![modify-edit-polyline](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/modify-edit-polyline.svg)
  ///
  /// CAD icon for `modify-edit-polyline`.
  static const CadIcon modifyEditPolyline = CadIcon('modify-edit-polyline');

  /// ![modify-edit-spline](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/modify-edit-spline.svg)
  ///
  /// CAD icon for `modify-edit-spline`.
  static const CadIcon modifyEditSpline = CadIcon('modify-edit-spline');

  /// ![modify-erase](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/modify-erase.svg)
  ///
  /// CAD icon for `modify-erase`.
  static const CadIcon modifyErase = CadIcon('modify-erase');

  /// ![modify-explode](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/modify-explode.svg)
  ///
  /// CAD icon for `modify-explode`.
  static const CadIcon modifyExplode = CadIcon('modify-explode');

  /// ![modify-join](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/modify-join.svg)
  ///
  /// CAD icon for `modify-join`.
  static const CadIcon modifyJoin = CadIcon('modify-join');

  /// ![modify-length](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/modify-length.svg)
  ///
  /// CAD icon for `modify-length`.
  static const CadIcon modifyLength = CadIcon('modify-length');

  /// ![modify-mirror-vertical](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/modify-mirror-vertical.svg)
  ///
  /// CAD icon for `modify-mirror-vertical`.
  static const CadIcon modifyMirrorVertical = CadIcon('modify-mirror-vertical');

  /// ![modify-mirror](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/modify-mirror.svg)
  ///
  /// CAD icon for `modify-mirror`.
  static const CadIcon modifyMirror = CadIcon('modify-mirror');

  /// ![modify-move](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/modify-move.svg)
  ///
  /// CAD icon for `modify-move`.
  static const CadIcon modifyMove = CadIcon('modify-move');

  /// ![modify-object-align-horizontal-center](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/modify-object-align-horizontal-center.svg)
  ///
  /// CAD icon for `modify-object-align-horizontal-center`.
  static const CadIcon modifyObjectAlignHorizontalCenter = CadIcon('modify-object-align-horizontal-center');

  /// ![modify-object-align-horizontal-left](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/modify-object-align-horizontal-left.svg)
  ///
  /// CAD icon for `modify-object-align-horizontal-left`.
  static const CadIcon modifyObjectAlignHorizontalLeft = CadIcon('modify-object-align-horizontal-left');

  /// ![modify-object-align-horizontal-right](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/modify-object-align-horizontal-right.svg)
  ///
  /// CAD icon for `modify-object-align-horizontal-right`.
  static const CadIcon modifyObjectAlignHorizontalRight = CadIcon('modify-object-align-horizontal-right');

  /// ![modify-object-align-vertical-bottom](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/modify-object-align-vertical-bottom.svg)
  ///
  /// CAD icon for `modify-object-align-vertical-bottom`.
  static const CadIcon modifyObjectAlignVerticalBottom = CadIcon('modify-object-align-vertical-bottom');

  /// ![modify-object-align-vertical-center](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/modify-object-align-vertical-center.svg)
  ///
  /// CAD icon for `modify-object-align-vertical-center`.
  static const CadIcon modifyObjectAlignVerticalCenter = CadIcon('modify-object-align-vertical-center');

  /// ![modify-object-align-vertical-top](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/modify-object-align-vertical-top.svg)
  ///
  /// CAD icon for `modify-object-align-vertical-top`.
  static const CadIcon modifyObjectAlignVerticalTop = CadIcon('modify-object-align-vertical-top');

  /// ![modify-object-bring-above](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/modify-object-bring-above.svg)
  ///
  /// CAD icon for `modify-object-bring-above`.
  static const CadIcon modifyObjectBringAbove = CadIcon('modify-object-bring-above');

  /// ![modify-object-bring-to-front](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/modify-object-bring-to-front.svg)
  ///
  /// CAD icon for `modify-object-bring-to-front`.
  static const CadIcon modifyObjectBringToFront = CadIcon('modify-object-bring-to-front');

  /// ![modify-object-distribute-horizontal-center](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/modify-object-distribute-horizontal-center.svg)
  ///
  /// CAD icon for `modify-object-distribute-horizontal-center`.
  static const CadIcon modifyObjectDistributeHorizontalCenter = CadIcon('modify-object-distribute-horizontal-center');

  /// ![modify-object-distribute-horizontal-left](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/modify-object-distribute-horizontal-left.svg)
  ///
  /// CAD icon for `modify-object-distribute-horizontal-left`.
  static const CadIcon modifyObjectDistributeHorizontalLeft = CadIcon('modify-object-distribute-horizontal-left');

  /// ![modify-object-distribute-horizontal-right](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/modify-object-distribute-horizontal-right.svg)
  ///
  /// CAD icon for `modify-object-distribute-horizontal-right`.
  static const CadIcon modifyObjectDistributeHorizontalRight = CadIcon('modify-object-distribute-horizontal-right');

  /// ![modify-object-distribute-vertical-bottom](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/modify-object-distribute-vertical-bottom.svg)
  ///
  /// CAD icon for `modify-object-distribute-vertical-bottom`.
  static const CadIcon modifyObjectDistributeVerticalBottom = CadIcon('modify-object-distribute-vertical-bottom');

  /// ![modify-object-distribute-vertical-center](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/modify-object-distribute-vertical-center.svg)
  ///
  /// CAD icon for `modify-object-distribute-vertical-center`.
  static const CadIcon modifyObjectDistributeVerticalCenter = CadIcon('modify-object-distribute-vertical-center');

  /// ![modify-object-distribute-vertical-top](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/modify-object-distribute-vertical-top.svg)
  ///
  /// CAD icon for `modify-object-distribute-vertical-top`.
  static const CadIcon modifyObjectDistributeVerticalTop = CadIcon('modify-object-distribute-vertical-top');

  /// ![modify-object-send-to-back](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/modify-object-send-to-back.svg)
  ///
  /// CAD icon for `modify-object-send-to-back`.
  static const CadIcon modifyObjectSendToBack = CadIcon('modify-object-send-to-back');

  /// ![modify-object-send-under](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/modify-object-send-under.svg)
  ///
  /// CAD icon for `modify-object-send-under`.
  static const CadIcon modifyObjectSendUnder = CadIcon('modify-object-send-under');

  /// ![modify-objects-group-box](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/modify-objects-group-box.svg)
  ///
  /// CAD icon for `modify-objects-group-box`.
  static const CadIcon modifyObjectsGroupBox = CadIcon('modify-objects-group-box');

  /// ![modify-objects-group](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/modify-objects-group.svg)
  ///
  /// CAD icon for `modify-objects-group`.
  static const CadIcon modifyObjectsGroup = CadIcon('modify-objects-group');

  /// ![modify-objects](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/modify-objects.svg)
  ///
  /// CAD icon for `modify-objects`.
  static const CadIcon modifyObjects = CadIcon('modify-objects');

  /// ![modify-offset](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/modify-offset.svg)
  ///
  /// CAD icon for `modify-offset`.
  static const CadIcon modifyOffset = CadIcon('modify-offset');

  /// ![modify-rotate-clockwise](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/modify-rotate-clockwise.svg)
  ///
  /// CAD icon for `modify-rotate-clockwise`.
  static const CadIcon modifyRotateClockwise = CadIcon('modify-rotate-clockwise');

  /// ![modify-rotate-counter-clockwise](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/modify-rotate-counter-clockwise.svg)
  ///
  /// CAD icon for `modify-rotate-counter-clockwise`.
  static const CadIcon modifyRotateCounterClockwise = CadIcon('modify-rotate-counter-clockwise');

  /// ![modify-scale](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/modify-scale.svg)
  ///
  /// CAD icon for `modify-scale`.
  static const CadIcon modifyScale = CadIcon('modify-scale');

  /// ![modify-shapes-exclude](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/modify-shapes-exclude.svg)
  ///
  /// CAD icon for `modify-shapes-exclude`.
  static const CadIcon modifyShapesExclude = CadIcon('modify-shapes-exclude');

  /// ![modify-shapes-intersect](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/modify-shapes-intersect.svg)
  ///
  /// CAD icon for `modify-shapes-intersect`.
  static const CadIcon modifyShapesIntersect = CadIcon('modify-shapes-intersect');

  /// ![modify-shapes-minus-front](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/modify-shapes-minus-front.svg)
  ///
  /// CAD icon for `modify-shapes-minus-front`.
  static const CadIcon modifyShapesMinusFront = CadIcon('modify-shapes-minus-front');

  /// ![modify-shapes-unite](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/modify-shapes-unite.svg)
  ///
  /// CAD icon for `modify-shapes-unite`.
  static const CadIcon modifyShapesUnite = CadIcon('modify-shapes-unite');

  /// ![modify-split](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/modify-split.svg)
  ///
  /// CAD icon for `modify-split`.
  static const CadIcon modifySplit = CadIcon('modify-split');

  /// ![modify-stretch](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/modify-stretch.svg)
  ///
  /// CAD icon for `modify-stretch`.
  static const CadIcon modifyStretch = CadIcon('modify-stretch');

  /// ![modify-swap](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/modify-swap.svg)
  ///
  /// CAD icon for `modify-swap`.
  static const CadIcon modifySwap = CadIcon('modify-swap');

  /// ![modify-trim](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/modify-trim.svg)
  ///
  /// CAD icon for `modify-trim`.
  static const CadIcon modifyTrim = CadIcon('modify-trim');

  /// ![parametric-model](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/parametric-model.svg)
  ///
  /// CAD icon for `parametric-model`.
  static const CadIcon parametricModel = CadIcon('parametric-model');

  /// ![point-cloud](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/point-cloud.svg)
  ///
  /// CAD icon for `point-cloud`.
  static const CadIcon pointCloud = CadIcon('point-cloud');

  /// ![scan-to-cad](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/scan-to-cad.svg)
  ///
  /// CAD icon for `scan-to-cad`.
  static const CadIcon scanToCad = CadIcon('scan-to-cad');

  /// ![section-view](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/section-view.svg)
  ///
  /// CAD icon for `section-view`.
  static const CadIcon sectionView = CadIcon('section-view');

  /// ![select-none](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/select-none.svg)
  ///
  /// CAD icon for `select-none`.
  static const CadIcon selectNone = CadIcon('select-none');

  /// ![select](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/select.svg)
  ///
  /// CAD icon for `select`.
  static const CadIcon select = CadIcon('select');

  /// ![shape-points-edit](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/shape-points-edit.svg)
  ///
  /// CAD icon for `shape-points-edit`.
  static const CadIcon shapePointsEdit = CadIcon('shape-points-edit');

  /// ![shape-points](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/shape-points.svg)
  ///
  /// CAD icon for `shape-points`.
  static const CadIcon shapePoints = CadIcon('shape-points');

  /// ![shapes](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/shapes.svg)
  ///
  /// CAD icon for `shapes`.
  static const CadIcon shapes = CadIcon('shapes');

  /// ![sheet-metal-bend](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/sheet-metal-bend.svg)
  ///
  /// CAD icon for `sheet-metal-bend`.
  static const CadIcon sheetMetalBend = CadIcon('sheet-metal-bend');

  /// ![sheet-metal-unfold](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/sheet-metal-unfold.svg)
  ///
  /// CAD icon for `sheet-metal-unfold`.
  static const CadIcon sheetMetalUnfold = CadIcon('sheet-metal-unfold');

  /// ![simulation-load](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/simulation-load.svg)
  ///
  /// CAD icon for `simulation-load`.
  static const CadIcon simulationLoad = CadIcon('simulation-load');

  /// ![simulation-stress](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/simulation-stress.svg)
  ///
  /// CAD icon for `simulation-stress`.
  static const CadIcon simulationStress = CadIcon('simulation-stress');

  /// ![snap-center](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/snap-center.svg)
  ///
  /// CAD icon for `snap-center`.
  static const CadIcon snapCenter = CadIcon('snap-center');

  /// ![snap-intersection](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/snap-intersection.svg)
  ///
  /// CAD icon for `snap-intersection`.
  static const CadIcon snapIntersection = CadIcon('snap-intersection');

  /// ![snap-midpoint](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/snap-midpoint.svg)
  ///
  /// CAD icon for `snap-midpoint`.
  static const CadIcon snapMidpoint = CadIcon('snap-midpoint');

  /// ![structural-3d-model](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/structural-3d-model.svg)
  ///
  /// CAD icon for `structural-3d-model`.
  static const CadIcon structural3dModel = CadIcon('structural-3d-model');

  /// ![technical-plan](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/technical-plan.svg)
  ///
  /// CAD icon for `technical-plan`.
  static const CadIcon technicalPlan = CadIcon('technical-plan');

  /// ![text-color](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/text-color.svg)
  ///
  /// CAD icon for `text-color`.
  static const CadIcon textColor = CadIcon('text-color');

  /// ![text-dimension-aligned](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/text-dimension-aligned.svg)
  ///
  /// CAD icon for `text-dimension-aligned`.
  static const CadIcon textDimensionAligned = CadIcon('text-dimension-aligned');

  /// ![text-dimension-angular](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/text-dimension-angular.svg)
  ///
  /// CAD icon for `text-dimension-angular`.
  static const CadIcon textDimensionAngular = CadIcon('text-dimension-angular');

  /// ![text-dimension-linear](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/text-dimension-linear.svg)
  ///
  /// CAD icon for `text-dimension-linear`.
  static const CadIcon textDimensionLinear = CadIcon('text-dimension-linear');

  /// ![text-dimension](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/text-dimension.svg)
  ///
  /// CAD icon for `text-dimension`.
  static const CadIcon textDimension = CadIcon('text-dimension');

  /// ![text-font-size](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/text-font-size.svg)
  ///
  /// CAD icon for `text-font-size`.
  static const CadIcon textFontSize = CadIcon('text-font-size');

  /// ![text-fonts](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/text-fonts.svg)
  ///
  /// CAD icon for `text-fonts`.
  static const CadIcon textFonts = CadIcon('text-fonts');

  /// ![text-leader](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/text-leader.svg)
  ///
  /// CAD icon for `text-leader`.
  static const CadIcon textLeader = CadIcon('text-leader');

  /// ![text](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/text.svg)
  ///
  /// CAD icon for `text`.
  static const CadIcon text = CadIcon('text');

  /// ![tool-lasso-polygonal-magnetic](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/tool-lasso-polygonal-magnetic.svg)
  ///
  /// CAD icon for `tool-lasso-polygonal-magnetic`.
  static const CadIcon toolLassoPolygonalMagnetic = CadIcon('tool-lasso-polygonal-magnetic');

  /// ![tool-lasso-polygonal](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/tool-lasso-polygonal.svg)
  ///
  /// CAD icon for `tool-lasso-polygonal`.
  static const CadIcon toolLassoPolygonal = CadIcon('tool-lasso-polygonal');

  /// ![tool-lasso](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/tool-lasso.svg)
  ///
  /// CAD icon for `tool-lasso`.
  static const CadIcon toolLasso = CadIcon('tool-lasso');

  /// ![tool-magic-wand](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/tool-magic-wand.svg)
  ///
  /// CAD icon for `tool-magic-wand`.
  static const CadIcon toolMagicWand = CadIcon('tool-magic-wand');

  /// ![tool-pen-freedom](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/tool-pen-freedom.svg)
  ///
  /// CAD icon for `tool-pen-freedom`.
  static const CadIcon toolPenFreedom = CadIcon('tool-pen-freedom');

  /// ![tool-pen-point-add](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/tool-pen-point-add.svg)
  ///
  /// CAD icon for `tool-pen-point-add`.
  static const CadIcon toolPenPointAdd = CadIcon('tool-pen-point-add');

  /// ![tool-pen-point-remove](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/tool-pen-point-remove.svg)
  ///
  /// CAD icon for `tool-pen-point-remove`.
  static const CadIcon toolPenPointRemove = CadIcon('tool-pen-point-remove');

  /// ![tool-pen](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/tool-pen.svg)
  ///
  /// CAD icon for `tool-pen`.
  static const CadIcon toolPen = CadIcon('tool-pen');

  /// ![tool-point-convert](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/tool-point-convert.svg)
  ///
  /// CAD icon for `tool-point-convert`.
  static const CadIcon toolPointConvert = CadIcon('tool-point-convert');

  /// ![tool-selection-direct](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/tool-selection-direct.svg)
  ///
  /// CAD icon for `tool-selection-direct`.
  static const CadIcon toolSelectionDirect = CadIcon('tool-selection-direct');

  /// ![tool-selection](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/tool-selection.svg)
  ///
  /// CAD icon for `tool-selection`.
  static const CadIcon toolSelection = CadIcon('tool-selection');

  /// ![toolpath-simulate](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/toolpath-simulate.svg)
  ///
  /// CAD icon for `toolpath-simulate`.
  static const CadIcon toolpathSimulate = CadIcon('toolpath-simulate');

  /// ![toolpath](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/toolpath.svg)
  ///
  /// CAD icon for `toolpath`.
  static const CadIcon toolpath = CadIcon('toolpath');

  /// ![view-3d-back](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/view-3d-back.svg)
  ///
  /// CAD icon for `view-3d-back`.
  static const CadIcon view3dBack = CadIcon('view-3d-back');

  /// ![view-3d-bottom](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/view-3d-bottom.svg)
  ///
  /// CAD icon for `view-3d-bottom`.
  static const CadIcon view3dBottom = CadIcon('view-3d-bottom');

  /// ![view-3d-front](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/view-3d-front.svg)
  ///
  /// CAD icon for `view-3d-front`.
  static const CadIcon view3dFront = CadIcon('view-3d-front');

  /// ![view-3d-left](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/view-3d-left.svg)
  ///
  /// CAD icon for `view-3d-left`.
  static const CadIcon view3dLeft = CadIcon('view-3d-left');

  /// ![view-3d-right](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/view-3d-right.svg)
  ///
  /// CAD icon for `view-3d-right`.
  static const CadIcon view3dRight = CadIcon('view-3d-right');

  /// ![view-3d-top](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/view-3d-top.svg)
  ///
  /// CAD icon for `view-3d-top`.
  static const CadIcon view3dTop = CadIcon('view-3d-top');

  /// ![view-scale](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/view-scale.svg)
  ///
  /// CAD icon for `view-scale`.
  static const CadIcon viewScale = CadIcon('view-scale');

  /// ![workplane-offset](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/workplane-offset.svg)
  ///
  /// CAD icon for `workplane-offset`.
  static const CadIcon workplaneOffset = CadIcon('workplane-offset');

  /// ![workplane-rotate](https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons/workplane-rotate.svg)
  ///
  /// CAD icon for `workplane-rotate`.
  static const CadIcon workplaneRotate = CadIcon('workplane-rotate');

  /// List containing all 250 available [CadIcon] definitions.
  static const List<CadIcon> values = [
    threeDPrint,
    assemblyExplodedView,
    assemblyJointRevolute,
    assemblyJointSlider,
    bim,
    cncMilling,
    collisionCheck,
    constraintCoincident,
    constraintConcentric,
    constraintEqual,
    constraintFixed,
    constraintHorizontal,
    constraintParallel,
    constraintPerpendicular,
    constraintSymmetric,
    constraintTangent,
    constraintVertical,
    coordinates2dXy,
    coordinates2d,
    coordinates3dXyz,
    coordinates3d,
    coordinatesOrigin,
    draw3dCone,
    draw3dCube,
    draw3dCylinder,
    draw3dHexagonalPrism,
    draw3dLine,
    draw3dOctahedron,
    draw3dPipe,
    draw3dPlane,
    draw3dPyramidHexagonal,
    draw3dPyramid,
    draw3dRectangularPrism,
    draw3dSphere,
    draw3dTorus,
    draw3dTriangularPrism,
    draw3dTriangularPyramid,
    drawArc3Points,
    drawArcCenterStartAngle,
    drawArcCenterStartEnd,
    drawArcCenterStartLength,
    drawArcStartEndDirection,
    drawArcStartEndRadius,
    drawArc,
    drawBoundaries,
    drawCircle2Points,
    drawCircle3Points,
    drawCircleDiameter,
    drawCircleRadius,
    drawCircle,
    drawDivide,
    drawEllipse3Points,
    drawEllipseArc,
    drawEllipseCenter2Points,
    drawEllipse,
    drawGradient,
    drawHatches,
    drawLineDashes,
    drawLineInfinite,
    drawLine,
    drawPoint,
    drawPoints,
    drawPolygon2Points,
    drawPolygon,
    drawPolyline,
    drawRectangle2Points,
    drawRectangle,
    drawRegion,
    drawSplineControlVertices,
    drawSpline,
    drawSquare2Points,
    drawSquare,
    drawStar,
    drawTorus,
    drawingAnimation,
    drawingRendering,
    drawingWalkthrough,
    fileDrawing2d,
    fileDrawing3d,
    fileDrawing,
    fileType3dm,
    fileType3ds,
    fileType3mf,
    fileTypeAmf,
    fileTypeAsm,
    fileTypeCad,
    fileTypeCol,
    fileTypeDae,
    fileTypeDgn,
    fileTypeDwf,
    fileTypeDwg,
    fileTypeDxf,
    fileTypeF3d,
    fileTypeFbx,
    fileTypeGlb,
    fileTypeGltf,
    fileTypeIam,
    fileTypeIfc,
    fileTypeIges,
    fileTypeIgs,
    fileTypeIpt,
    fileTypeJt,
    fileTypeObj,
    fileTypePdf,
    fileTypePly,
    fileTypePrt,
    fileTypeSat,
    fileTypeSkp,
    fileTypeSmt,
    fileTypeStep,
    fileTypeStl,
    fileTypeStp,
    fileTypeSvg,
    fileTypeX3d,
    fileTypeXt,
    floorPlan,
    generativeDesign,
    gridPoints,
    gridSnap,
    grid,
    hatches,
    layer,
    layersBottom,
    layersMiddle,
    layersTop,
    layers,
    lineWidth,
    measureAngle,
    measureArea,
    measureDistance,
    measureQuick,
    measureRadius,
    measureVolume,
    measureWallThickness,
    measure,
    meshDecimate,
    meshRepair,
    meshSmooth,
    meshSubdivide,
    mode2d,
    mode3dDimetricWireframe,
    mode3dDimetric,
    mode3dIsometricWireframe,
    mode3dIsometric,
    mode3dWireframe,
    mode3d,
    modelHistory,
    modify3dExtrude,
    modify3dHole,
    modify3dLoft,
    modify3dRevolve,
    modify3dRib,
    modify3dShell,
    modifyArrayCircular,
    modifyArrayRectangular,
    modifyCopy,
    modifyCornersBevel,
    modifyCornersMitter,
    modifyCornersRound,
    modifyDeleteDuplicate,
    modifyDistance,
    modifyEditPolyline,
    modifyEditSpline,
    modifyErase,
    modifyExplode,
    modifyJoin,
    modifyLength,
    modifyMirrorVertical,
    modifyMirror,
    modifyMove,
    modifyObjectAlignHorizontalCenter,
    modifyObjectAlignHorizontalLeft,
    modifyObjectAlignHorizontalRight,
    modifyObjectAlignVerticalBottom,
    modifyObjectAlignVerticalCenter,
    modifyObjectAlignVerticalTop,
    modifyObjectBringAbove,
    modifyObjectBringToFront,
    modifyObjectDistributeHorizontalCenter,
    modifyObjectDistributeHorizontalLeft,
    modifyObjectDistributeHorizontalRight,
    modifyObjectDistributeVerticalBottom,
    modifyObjectDistributeVerticalCenter,
    modifyObjectDistributeVerticalTop,
    modifyObjectSendToBack,
    modifyObjectSendUnder,
    modifyObjectsGroupBox,
    modifyObjectsGroup,
    modifyObjects,
    modifyOffset,
    modifyRotateClockwise,
    modifyRotateCounterClockwise,
    modifyScale,
    modifyShapesExclude,
    modifyShapesIntersect,
    modifyShapesMinusFront,
    modifyShapesUnite,
    modifySplit,
    modifyStretch,
    modifySwap,
    modifyTrim,
    parametricModel,
    pointCloud,
    scanToCad,
    sectionView,
    selectNone,
    select,
    shapePointsEdit,
    shapePoints,
    shapes,
    sheetMetalBend,
    sheetMetalUnfold,
    simulationLoad,
    simulationStress,
    snapCenter,
    snapIntersection,
    snapMidpoint,
    structural3dModel,
    technicalPlan,
    textColor,
    textDimensionAligned,
    textDimensionAngular,
    textDimensionLinear,
    textDimension,
    textFontSize,
    textFonts,
    textLeader,
    text,
    toolLassoPolygonalMagnetic,
    toolLassoPolygonal,
    toolLasso,
    toolMagicWand,
    toolPenFreedom,
    toolPenPointAdd,
    toolPenPointRemove,
    toolPen,
    toolPointConvert,
    toolSelectionDirect,
    toolSelection,
    toolpathSimulate,
    toolpath,
    view3dBack,
    view3dBottom,
    view3dFront,
    view3dLeft,
    view3dRight,
    view3dTop,
    viewScale,
    workplaneOffset,
    workplaneRotate,
  ];

  /// Map of icon file names to [CadIcon] instances for dynamic lookup.
  static const Map<String, CadIcon> all = {
    '3d-print': threeDPrint,
    'assembly-exploded-view': assemblyExplodedView,
    'assembly-joint-revolute': assemblyJointRevolute,
    'assembly-joint-slider': assemblyJointSlider,
    'bim': bim,
    'cnc-milling': cncMilling,
    'collision-check': collisionCheck,
    'constraint-coincident': constraintCoincident,
    'constraint-concentric': constraintConcentric,
    'constraint-equal': constraintEqual,
    'constraint-fixed': constraintFixed,
    'constraint-horizontal': constraintHorizontal,
    'constraint-parallel': constraintParallel,
    'constraint-perpendicular': constraintPerpendicular,
    'constraint-symmetric': constraintSymmetric,
    'constraint-tangent': constraintTangent,
    'constraint-vertical': constraintVertical,
    'coordinates-2d-xy': coordinates2dXy,
    'coordinates-2d': coordinates2d,
    'coordinates-3d-xyz': coordinates3dXyz,
    'coordinates-3d': coordinates3d,
    'coordinates-origin': coordinatesOrigin,
    'draw-3d-cone': draw3dCone,
    'draw-3d-cube': draw3dCube,
    'draw-3d-cylinder': draw3dCylinder,
    'draw-3d-hexagonal-prism': draw3dHexagonalPrism,
    'draw-3d-line': draw3dLine,
    'draw-3d-octahedron': draw3dOctahedron,
    'draw-3d-pipe': draw3dPipe,
    'draw-3d-plane': draw3dPlane,
    'draw-3d-pyramid-hexagonal': draw3dPyramidHexagonal,
    'draw-3d-pyramid': draw3dPyramid,
    'draw-3d-rectangular-prism': draw3dRectangularPrism,
    'draw-3d-sphere': draw3dSphere,
    'draw-3d-torus': draw3dTorus,
    'draw-3d-triangular-prism': draw3dTriangularPrism,
    'draw-3d-triangular-pyramid': draw3dTriangularPyramid,
    'draw-arc-3-points': drawArc3Points,
    'draw-arc-center-start-angle': drawArcCenterStartAngle,
    'draw-arc-center-start-end': drawArcCenterStartEnd,
    'draw-arc-center-start-length': drawArcCenterStartLength,
    'draw-arc-start-end-direction': drawArcStartEndDirection,
    'draw-arc-start-end-radius': drawArcStartEndRadius,
    'draw-arc': drawArc,
    'draw-boundaries': drawBoundaries,
    'draw-circle-2-points': drawCircle2Points,
    'draw-circle-3-points': drawCircle3Points,
    'draw-circle-diameter': drawCircleDiameter,
    'draw-circle-radius': drawCircleRadius,
    'draw-circle': drawCircle,
    'draw-divide': drawDivide,
    'draw-ellipse-3-points': drawEllipse3Points,
    'draw-ellipse-arc': drawEllipseArc,
    'draw-ellipse-center-2-points': drawEllipseCenter2Points,
    'draw-ellipse': drawEllipse,
    'draw-gradient': drawGradient,
    'draw-hatches': drawHatches,
    'draw-line-dashes': drawLineDashes,
    'draw-line-infinite': drawLineInfinite,
    'draw-line': drawLine,
    'draw-point': drawPoint,
    'draw-points': drawPoints,
    'draw-polygon-2-points': drawPolygon2Points,
    'draw-polygon': drawPolygon,
    'draw-polyline': drawPolyline,
    'draw-rectangle-2-points': drawRectangle2Points,
    'draw-rectangle': drawRectangle,
    'draw-region': drawRegion,
    'draw-spline-control-vertices': drawSplineControlVertices,
    'draw-spline': drawSpline,
    'draw-square-2-points': drawSquare2Points,
    'draw-square': drawSquare,
    'draw-star': drawStar,
    'draw-torus': drawTorus,
    'drawing-animation': drawingAnimation,
    'drawing-rendering': drawingRendering,
    'drawing-walkthrough': drawingWalkthrough,
    'file-drawing-2d': fileDrawing2d,
    'file-drawing-3d': fileDrawing3d,
    'file-drawing': fileDrawing,
    'file-type-3dm': fileType3dm,
    'file-type-3ds': fileType3ds,
    'file-type-3mf': fileType3mf,
    'file-type-amf': fileTypeAmf,
    'file-type-asm': fileTypeAsm,
    'file-type-cad': fileTypeCad,
    'file-type-col': fileTypeCol,
    'file-type-dae': fileTypeDae,
    'file-type-dgn': fileTypeDgn,
    'file-type-dwf': fileTypeDwf,
    'file-type-dwg': fileTypeDwg,
    'file-type-dxf': fileTypeDxf,
    'file-type-f3d': fileTypeF3d,
    'file-type-fbx': fileTypeFbx,
    'file-type-glb': fileTypeGlb,
    'file-type-gltf': fileTypeGltf,
    'file-type-iam': fileTypeIam,
    'file-type-ifc': fileTypeIfc,
    'file-type-iges': fileTypeIges,
    'file-type-igs': fileTypeIgs,
    'file-type-ipt': fileTypeIpt,
    'file-type-jt': fileTypeJt,
    'file-type-obj': fileTypeObj,
    'file-type-pdf': fileTypePdf,
    'file-type-ply': fileTypePly,
    'file-type-prt': fileTypePrt,
    'file-type-sat': fileTypeSat,
    'file-type-skp': fileTypeSkp,
    'file-type-smt': fileTypeSmt,
    'file-type-step': fileTypeStep,
    'file-type-stl': fileTypeStl,
    'file-type-stp': fileTypeStp,
    'file-type-svg': fileTypeSvg,
    'file-type-x3d': fileTypeX3d,
    'file-type-xt': fileTypeXt,
    'floor-plan': floorPlan,
    'generative-design': generativeDesign,
    'grid-points': gridPoints,
    'grid-snap': gridSnap,
    'grid': grid,
    'hatches': hatches,
    'layer': layer,
    'layers-bottom': layersBottom,
    'layers-middle': layersMiddle,
    'layers-top': layersTop,
    'layers': layers,
    'line-width': lineWidth,
    'measure-angle': measureAngle,
    'measure-area': measureArea,
    'measure-distance': measureDistance,
    'measure-quick': measureQuick,
    'measure-radius': measureRadius,
    'measure-volume': measureVolume,
    'measure-wall-thickness': measureWallThickness,
    'measure': measure,
    'mesh-decimate': meshDecimate,
    'mesh-repair': meshRepair,
    'mesh-smooth': meshSmooth,
    'mesh-subdivide': meshSubdivide,
    'mode-2d': mode2d,
    'mode-3d-dimetric-wireframe': mode3dDimetricWireframe,
    'mode-3d-dimetric': mode3dDimetric,
    'mode-3d-isometric-wireframe': mode3dIsometricWireframe,
    'mode-3d-isometric': mode3dIsometric,
    'mode-3d-wireframe': mode3dWireframe,
    'mode-3d': mode3d,
    'model-history': modelHistory,
    'modify-3d-extrude': modify3dExtrude,
    'modify-3d-hole': modify3dHole,
    'modify-3d-loft': modify3dLoft,
    'modify-3d-revolve': modify3dRevolve,
    'modify-3d-rib': modify3dRib,
    'modify-3d-shell': modify3dShell,
    'modify-array-circular': modifyArrayCircular,
    'modify-array-rectangular': modifyArrayRectangular,
    'modify-copy': modifyCopy,
    'modify-corners-bevel': modifyCornersBevel,
    'modify-corners-mitter': modifyCornersMitter,
    'modify-corners-round': modifyCornersRound,
    'modify-delete-duplicate': modifyDeleteDuplicate,
    'modify-distance': modifyDistance,
    'modify-edit-polyline': modifyEditPolyline,
    'modify-edit-spline': modifyEditSpline,
    'modify-erase': modifyErase,
    'modify-explode': modifyExplode,
    'modify-join': modifyJoin,
    'modify-length': modifyLength,
    'modify-mirror-vertical': modifyMirrorVertical,
    'modify-mirror': modifyMirror,
    'modify-move': modifyMove,
    'modify-object-align-horizontal-center': modifyObjectAlignHorizontalCenter,
    'modify-object-align-horizontal-left': modifyObjectAlignHorizontalLeft,
    'modify-object-align-horizontal-right': modifyObjectAlignHorizontalRight,
    'modify-object-align-vertical-bottom': modifyObjectAlignVerticalBottom,
    'modify-object-align-vertical-center': modifyObjectAlignVerticalCenter,
    'modify-object-align-vertical-top': modifyObjectAlignVerticalTop,
    'modify-object-bring-above': modifyObjectBringAbove,
    'modify-object-bring-to-front': modifyObjectBringToFront,
    'modify-object-distribute-horizontal-center': modifyObjectDistributeHorizontalCenter,
    'modify-object-distribute-horizontal-left': modifyObjectDistributeHorizontalLeft,
    'modify-object-distribute-horizontal-right': modifyObjectDistributeHorizontalRight,
    'modify-object-distribute-vertical-bottom': modifyObjectDistributeVerticalBottom,
    'modify-object-distribute-vertical-center': modifyObjectDistributeVerticalCenter,
    'modify-object-distribute-vertical-top': modifyObjectDistributeVerticalTop,
    'modify-object-send-to-back': modifyObjectSendToBack,
    'modify-object-send-under': modifyObjectSendUnder,
    'modify-objects-group-box': modifyObjectsGroupBox,
    'modify-objects-group': modifyObjectsGroup,
    'modify-objects': modifyObjects,
    'modify-offset': modifyOffset,
    'modify-rotate-clockwise': modifyRotateClockwise,
    'modify-rotate-counter-clockwise': modifyRotateCounterClockwise,
    'modify-scale': modifyScale,
    'modify-shapes-exclude': modifyShapesExclude,
    'modify-shapes-intersect': modifyShapesIntersect,
    'modify-shapes-minus-front': modifyShapesMinusFront,
    'modify-shapes-unite': modifyShapesUnite,
    'modify-split': modifySplit,
    'modify-stretch': modifyStretch,
    'modify-swap': modifySwap,
    'modify-trim': modifyTrim,
    'parametric-model': parametricModel,
    'point-cloud': pointCloud,
    'scan-to-cad': scanToCad,
    'section-view': sectionView,
    'select-none': selectNone,
    'select': select,
    'shape-points-edit': shapePointsEdit,
    'shape-points': shapePoints,
    'shapes': shapes,
    'sheet-metal-bend': sheetMetalBend,
    'sheet-metal-unfold': sheetMetalUnfold,
    'simulation-load': simulationLoad,
    'simulation-stress': simulationStress,
    'snap-center': snapCenter,
    'snap-intersection': snapIntersection,
    'snap-midpoint': snapMidpoint,
    'structural-3d-model': structural3dModel,
    'technical-plan': technicalPlan,
    'text-color': textColor,
    'text-dimension-aligned': textDimensionAligned,
    'text-dimension-angular': textDimensionAngular,
    'text-dimension-linear': textDimensionLinear,
    'text-dimension': textDimension,
    'text-font-size': textFontSize,
    'text-fonts': textFonts,
    'text-leader': textLeader,
    'text': text,
    'tool-lasso-polygonal-magnetic': toolLassoPolygonalMagnetic,
    'tool-lasso-polygonal': toolLassoPolygonal,
    'tool-lasso': toolLasso,
    'tool-magic-wand': toolMagicWand,
    'tool-pen-freedom': toolPenFreedom,
    'tool-pen-point-add': toolPenPointAdd,
    'tool-pen-point-remove': toolPenPointRemove,
    'tool-pen': toolPen,
    'tool-point-convert': toolPointConvert,
    'tool-selection-direct': toolSelectionDirect,
    'tool-selection': toolSelection,
    'toolpath-simulate': toolpathSimulate,
    'toolpath': toolpath,
    'view-3d-back': view3dBack,
    'view-3d-bottom': view3dBottom,
    'view-3d-front': view3dFront,
    'view-3d-left': view3dLeft,
    'view-3d-right': view3dRight,
    'view-3d-top': view3dTop,
    'view-scale': viewScale,
    'workplane-offset': workplaneOffset,
    'workplane-rotate': workplaneRotate,
  };
}

/// Backwards compatibility alias for [CadIcon].
typedef ToolsIcon = CadIcon;
