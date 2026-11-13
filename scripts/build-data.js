const fs = require('fs');
const path = require('path');

const projectRoot = path.resolve(__dirname, '..');
const iconsDir = path.join(projectRoot, 'assets', 'icons');
const flutterDir = path.join(projectRoot, 'flutter');

if (!fs.existsSync(flutterDir)) {
  fs.mkdirSync(flutterDir, { recursive: true });
}

function toTitleCase(str) {
  return str
    .split('-')
    .map(w => w.charAt(0).toUpperCase() + w.slice(1))
    .join(' ');
}

function toEnumName(name) {
  if (name === '3d-print') return 'threeDPrint';
  let parts = name.split('-');
  let res = parts[0] + parts.slice(1).map(p => p.charAt(0).toUpperCase() + p.slice(1)).join('');
  if (res.startsWith('2d')) res = 'twoD' + res.slice(2);
  if (res.startsWith('3d')) res = 'threeD' + res.slice(2);
  return res;
}

function getCategory(name) {
  if (name.startsWith('constraint-')) return 'Constraints';
  if (name.startsWith('draw-3d-')) return '3D Solids & Shapes';
  if (name.startsWith('draw-arc-') || name === 'draw-arc') return 'Arcs';
  if (name.startsWith('draw-circle-') || name === 'draw-circle') return 'Circles';
  if (name.startsWith('draw-ellipse-') || name === 'draw-ellipse') return 'Ellipses';
  if (name.startsWith('draw-line-') || name === 'draw-line') return 'Lines';
  if (name.startsWith('draw-')) return '2D Shapes & Sketches';
  if (name.startsWith('file-type-')) return 'File Formats (CAD/3D)';
  if (name.startsWith('file-drawing-') || name === 'file-drawing') return 'Drawings & Files';
  if (name.startsWith('drawing-')) return 'Viewport & Render';
  if (name.startsWith('measure-') || name === 'measure') return 'Measurement';
  if (name.startsWith('modify-3d-')) return '3D Features & Booleans';
  if (name.startsWith('modify-object-align-') || name.startsWith('modify-object-distribute-')) return 'Align & Distribute';
  if (name.startsWith('modify-object-') || name.startsWith('modify-objects-') || name === 'modify-objects') return 'Object Arrangement';
  if (name.startsWith('modify-shapes-')) return 'Boolean 2D Operations';
  if (name.startsWith('modify-corners-')) return 'Corners & Fillets';
  if (name.startsWith('modify-array-')) return 'Pattern & Arrays';
  if (name.startsWith('modify-')) return 'Transform & Edit';
  if (name.startsWith('view-3d-') || name === 'view-scale') return 'Views & Perspectives';
  if (name.startsWith('mode-3d-') || name === 'mode-3d' || name === 'mode-2d') return 'Display Modes';
  if (name.startsWith('mesh-')) return 'Mesh & Topology';
  if (name.startsWith('coordinates-')) return 'Coordinates & Origin';
  if (name.startsWith('snap-')) return 'Snapping & Points';
  if (name.startsWith('tool-lasso') || name.startsWith('tool-selection') || name.startsWith('tool-magic')) return 'Selection Tools';
  if (name.startsWith('tool-pen') || name.startsWith('tool-point') || name === 'toolpath' || name.startsWith('toolpath-')) return 'Vector & Toolpath';
  if (name.startsWith('text-dimension')) return 'Dimensions';
  if (name.startsWith('text-') || name === 'text') return 'Text & Annotations';
  if (name.startsWith('assembly-')) return 'Assemblies & Joints';
  if (name.startsWith('simulation-')) return 'Simulation & FEA';
  if (name.startsWith('layer-') || name.startsWith('layers-') || name === 'layer' || name === 'layers') return 'Layers';
  if (name.startsWith('grid-') || name === 'grid') return 'Grid & Snapping';
  if (name.startsWith('sheet-metal-')) return 'Sheet Metal';
  if (name.startsWith('workplane-')) return 'Workplane & UCS';
  if (['3d-print', 'cnc-milling', 'collision-check', 'bim', 'floor-plan', 'generative-design', 'hatches', 'parametric-model', 'point-cloud', 'scan-to-cad', 'section-view', 'technical-plan', 'line-width', 'model-history', 'shapes', 'select', 'select-none', 'shape-points', 'shape-points-edit'].includes(name)) {
    return 'CAD & Manufacturing';
  }
  return 'General CAD';
}

function getTags(name, category) {
  const words = name.split('-');
  const tagsSet = new Set([...words, category.toLowerCase()]);

  if (name.includes('print')) tagsSet.add('additive').add('rapid-prototyping');
  if (name.includes('cnc')) tagsSet.add('machining').add('manufacturing').add('gcode');
  if (name.includes('cube')) tagsSet.add('box').add('volume');
  if (name.includes('sphere')) tagsSet.add('ball').add('globe');
  if (name.includes('cylinder')) tagsSet.add('tube').add('pipe');
  if (name.includes('extrude')) tagsSet.add('pull').add('boss').add('height');
  if (name.includes('revolve')) tagsSet.add('turn').add('lathe');
  if (name.includes('fillet') || name.includes('round')) tagsSet.add('smooth').add('bevel');
  if (name.includes('measure')) tagsSet.add('ruler').add('distance').add('dimension').add('size');
  if (name.includes('angle')) tagsSet.add('degree').add('protractor');
  if (name.includes('dwg') || name.includes('dxf')) tagsSet.add('autocad').add('vector');
  if (name.includes('step') || name.includes('stp') || name.includes('iges')) tagsSet.add('cad-exchange').add('solid');
  if (name.includes('stl') || name.includes('obj') || name.includes('3mf')) tagsSet.add('mesh').add('3d-model');
  if (name.includes('joint')) tagsSet.add('kinematics').add('assembly').add('motion');
  if (name.includes('stress') || name.includes('load')) tagsSet.add('fea').add('structural').add('force');

  return Array.from(tagsSet);
}

const files = fs.readdirSync(iconsDir).filter(f => f.endsWith('.svg')).sort();

console.log(`Processing ${files.length} icons...`);

const repoUrl = 'https://raw.githubusercontent.com/MadalyImbate/cad-icons-flutter/main/assets/icons';

const icons = files.map(filename => {
  const name = filename.replace(/\.svg$/, '');
  const filePath = path.join(iconsDir, filename);
  let svg = fs.readFileSync(filePath, 'utf8').trim();

  if (!svg.includes('viewBox')) {
    svg = svg.replace('<svg', '<svg viewBox="0 0 24 24"');
  }

  const category = getCategory(name);
  const title = toTitleCase(name);
  const enumName = toEnumName(name);
  const tags = getTags(name, category);

  return {
    id: name,
    name: name,
    filename: filename,
    title: title,
    category: category,
    tags: tags,
    enumName: enumName,
    remoteUrl: `${repoUrl}/${filename}`,
    svg: svg
  };
});

// Write icons-data.js
const iconsDataJsContent = `// Auto-generated CAD Icons Catalog Data
// Total icons: ${icons.length}
window.ICONS_DATA = ${JSON.stringify(icons, null, 2)};
`;
fs.writeFileSync(path.join(projectRoot, 'icons-data.js'), iconsDataJsContent, 'utf8');

// Write icons.json
fs.writeFileSync(path.join(projectRoot, 'icons.json'), JSON.stringify(icons, null, 2), 'utf8');

console.log('Successfully regenerated icons-data.js and icons.json!');
