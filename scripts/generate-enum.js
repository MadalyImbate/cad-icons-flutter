const fs = require('fs');
const path = require('path');

const projectRoot = path.resolve(__dirname, '..');
const assetsIconsDir = path.join(projectRoot, 'assets', 'icons');
const libSrcDir = path.join(projectRoot, 'lib', 'src');

if (!fs.existsSync(libSrcDir)) {
  fs.mkdirSync(libSrcDir, { recursive: true });
}

function toEnumName(name) {
  if (name === '3d-print') return 'threeDPrint';
  let parts = name.split('-');
  let res = parts[0] + parts.slice(1).map(p => p.charAt(0).toUpperCase() + p.slice(1)).join('');
  if (res.startsWith('2d')) res = 'twoD' + res.slice(2);
  if (res.startsWith('3d')) res = 'threeD' + res.slice(2);
  return res;
}

const files = fs.readdirSync(assetsIconsDir).filter(f => f.endsWith('.svg')).sort();

console.log(`Generating CadIcon enum for ${files.length} icons...`);

const repoUrl = 'https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons';

const enumEntries = files.map((file, idx) => {
  const fileName = file.replace(/\.svg$/, '');
  const enumName = toEnumName(fileName);
  const isLast = idx === files.length - 1;
  const commaOrSemi = isLast ? ';' : ',';

  return `  /// ![${fileName}](${repoUrl}/${fileName}.svg)
  ///
  /// CAD icon for \`${fileName}\`.
  ${enumName}('${fileName}')${commaOrSemi}`;
});

const content = `// Generated CAD Icons Enum for Flutter
// Total icons: ${files.length}

/// Enum representing all 250+ available CAD vector icons.
///
/// Usage:
/// \`\`\`dart
/// CadIcons(CadIcon.draw3dCube)
/// \`\`\`
///
/// Hover over any enum value in VS Code, Android Studio, or pub.dev to preview the icon.
enum CadIcon {
${enumEntries.join('\n\n')}

  const CadIcon(this.fileName);

  /// The SVG file name without extension (e.g. 'draw-circle').
  final String fileName;

  /// The asset path inside the package (e.g. 'assets/icons/draw-circle.svg').
  String get assetPath => 'assets/icons/\$fileName.svg';

  /// The remote URL to the vector icon on GitHub.
  String get remoteUrl =>
      '${repoUrl}/\$fileName.svg';
}

/// Backwards compatibility alias for [CadIcon].
typedef ToolsIcon = CadIcon;
`;

fs.writeFileSync(path.join(libSrcDir, 'cad_icon.dart'), content, 'utf8');

// Remove old tools_icon.dart if present
const oldPath = path.join(libSrcDir, 'tools_icon.dart');
if (fs.existsSync(oldPath)) {
  fs.unlinkSync(oldPath);
}

console.log('Successfully generated lib/src/cad_icon.dart');
