const fs = require('fs');
const path = require('path');

const projectRoot = path.resolve(__dirname, '..');
const assetsIconsDir = path.join(projectRoot, 'assets', 'icons');
const libSrcDir = path.join(projectRoot, 'lib', 'src');

if (!fs.existsSync(libSrcDir)) {
  fs.mkdirSync(libSrcDir, { recursive: true });
}

function toCamelName(name) {
  if (name === '3d-print') return 'threeDPrint';
  let parts = name.split('-');
  let res = parts[0] + parts.slice(1).map(p => p.charAt(0).toUpperCase() + p.slice(1)).join('');
  if (res.startsWith('2d')) res = 'twoD' + res.slice(2);
  if (res.startsWith('3d')) res = 'threeD' + res.slice(2);
  return res;
}

const files = fs.readdirSync(assetsIconsDir).filter(f => f.endsWith('.svg')).sort();

console.log(`Generating CadIcon class with ${files.length} static icons...`);

const repoUrl = 'https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons';

const iconDefinitions = files.map(file => {
  const fileName = file.replace(/\.svg$/, '');
  const camelName = toCamelName(fileName);

  return `  /// ![${fileName}](${repoUrl}/${fileName}.svg)
  ///
  /// CAD icon for \`${fileName}\`.
  static const CadIcon ${camelName} = CadIcon('${fileName}');`;
}).join('\n\n');

const allMapEntries = files.map(file => {
  const fileName = file.replace(/\.svg$/, '');
  const camelName = toCamelName(fileName);
  return `    '${fileName}': ${camelName},`;
}).join('\n');

const valuesListEntries = files.map(file => {
  const fileName = file.replace(/\.svg$/, '');
  return `    ${toCamelName(fileName)},`;
}).join('\n');

const content = `// Generated CAD Icons for Flutter
// Total icons: ${files.length}

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

/// A CAD vector icon that is both an icon identifier and a ready-to-use [Widget].
///
/// Can be passed directly where a [Widget] is expected:
/// \`\`\`dart
/// IconButton(
///   icon: CadIcon.select,
///   selectedIcon: CadIcon.select(color: Colors.blue),
///   onPressed: () {},
/// )
/// \`\`\`
///
/// Or used with [CadIcons]:
/// \`\`\`dart
/// CadIcons(CadIcon.select)
/// ToolBarIcons(ToolsIcon.select, color: Colors.blue)
/// \`\`\`
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
  /// If null, defaults to ambient [IconTheme.size] or \`24.0\`.
  final double? size;

  /// The color to use when drawing the icon.
  ///
  /// If null, defaults to ambient [IconTheme.color] or [ColorScheme.onSurface].
  final Color? color;

  /// The package from which the asset should be loaded.
  ///
  /// Defaults to \`'cad_icons_flutter'\`.
  final String? package;

  /// An optional semantic label for accessibility.
  final String? semanticsLabel;

  /// The SVG file name without extension.
  String get fileName => name;

  /// The asset path inside the package bundle.
  String get assetPath => 'assets/icons/\$name.svg';

  /// The remote URL to the vector icon on GitHub for hover previews.
  String get remoteUrl =>
      '${repoUrl}/\$name.svg';

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

  /// Convenience callable: \`CadIcon.select(color: Colors.blue, size: 24)\`
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
      'assets/icons/\$name.svg',
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
      'CadIcon(\$name, size: \$size, color: \$color)';

  // ============================================================
  // Static Const Icon Definitions (${files.length} Icons)
  // ============================================================

${iconDefinitions}

  /// List containing all 250 available [CadIcon] definitions.
  static const List<CadIcon> values = [
${valuesListEntries}
  ];

  /// Map of icon file names to [CadIcon] instances for dynamic lookup.
  static const Map<String, CadIcon> all = {
${allMapEntries}
  };
}

/// Backwards compatibility alias for [CadIcon].
typedef ToolsIcon = CadIcon;
`;

fs.writeFileSync(path.join(libSrcDir, 'cad_icon.dart'), content, 'utf8');
console.log('Successfully generated lib/src/cad_icon.dart');
