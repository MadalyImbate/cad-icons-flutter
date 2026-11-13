import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'cad_icon.dart';

/// A widget that renders CAD vector icons with native Flutter [IconTheme] compatibility.
///
/// Responsive to ambient [IconTheme], respecting [IconThemeData.size] and
/// [IconThemeData.color] just like Flutter's standard Material [Icon] widget.
///
/// ### Example Usage:
/// ```dart
/// // Basic usage:
/// CadIcons(CadIcon.draw3dCube)
///
/// // With custom size and color:
/// CadIcons(
///   CadIcon.threeDPrint,
///   size: 32,
///   color: Colors.blueAccent,
/// )
///
/// // Inside an IconButton (inherits theme automatically):
/// IconButton(
///   tooltip: 'CNC Milling',
///   icon: const CadIcons(CadIcon.cncMilling),
///   onPressed: () {},
/// )
/// ```
class CadIcons extends StatelessWidget {
  const CadIcons(
    this.icon, {
    super.key,
    this.size,
    this.color,
    this.package = 'cad_icons_flutter',
    this.semanticsLabel,
  });

  /// The CAD icon to display from [CadIcon].
  final CadIcon icon;

  /// The size of the icon in logical pixels.
  ///
  /// Defaults to ambient [IconTheme.size], or `24.0` if not set.
  final double? size;

  /// The color to use when drawing the icon.
  ///
  /// Defaults to ambient [IconTheme.color], or [ColorScheme.onSurface] if not set.
  final Color? color;

  /// The package from which the asset should be loaded.
  ///
  /// Defaults to `'cad_icons_flutter'`.
  final String? package;

  /// An optional semantic label for accessibility.
  final String? semanticsLabel;

  @override
  Widget build(BuildContext context) {
    final iconTheme = IconTheme.of(context);
    final c =
        color ?? iconTheme.color ?? Theme.of(context).colorScheme.onSurface;
    final s = size ?? iconTheme.size ?? 24.0;

    return SvgPicture.asset(
      'assets/icons/${icon.fileName}.svg',
      package: package,
      width: s,
      height: s,
      theme: SvgTheme(currentColor: c),
      semanticsLabel: semanticsLabel ?? icon.fileName,
    );
  }
}

/// Backwards compatibility alias for [CadIcons].
typedef ToolBarIcons = CadIcons;

/// Convenience alias for [CadIcons].
typedef CadIconWidget = CadIcons;
