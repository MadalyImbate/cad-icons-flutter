import 'package:flutter/material.dart';
import 'cad_icon.dart';

/// A widget that renders CAD vector icons with optional size and color overrides.
///
/// ### Examples:
/// ```dart
/// // Standard usage:
/// CadIcons(CadIcon.draw3dCube)
///
/// // With custom size and color:
/// CadIcons(
///   CadIcon.threeDPrint,
///   size: 32,
///   color: Colors.blueAccent,
/// )
///
/// // In an IconButton:
/// IconButton(
///   icon: CadIcons(CadIcon.select),
///   selectedIcon: ToolBarIcons(ToolsIcon.select, color: Colors.blue),
///   onPressed: () {},
/// )
/// ```
class CadIcons extends StatelessWidget {
  const CadIcons(
    this.icon, {
    super.key,
    this.size,
    this.color,
    this.package,
    this.semanticsLabel,
  });

  /// The CAD icon to render from [CadIcon].
  final CadIcon icon;

  /// The size of the icon in logical pixels.
  ///
  /// If null, defaults to [icon.size] or ambient [IconTheme.size].
  final double? size;

  /// The color to use when drawing the icon.
  ///
  /// If null, defaults to [icon.color] or ambient [IconTheme.color].
  final Color? color;

  /// The package from which the asset should be fetched.
  final String? package;

  /// An optional semantic label for accessibility.
  final String? semanticsLabel;

  @override
  Widget build(BuildContext context) {
    return icon.copyWith(
      key: key,
      size: size ?? icon.size,
      color: color ?? icon.color,
      package: package ?? icon.package,
      semanticsLabel: semanticsLabel ?? icon.semanticsLabel,
    );
  }
}

/// Backwards compatibility alias for [CadIcons].
typedef ToolBarIcons = CadIcons;

/// Convenience alias for [CadIcons].
typedef CadIconWidget = CadIcons;
