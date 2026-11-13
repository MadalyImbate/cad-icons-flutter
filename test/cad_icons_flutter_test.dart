import 'package:cad_icons_flutter/cad_icons_flutter.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('CadIcon contains all 250 icons', () {
    expect(CadIcon.values.length, 250);
  });

  test('CadIcon fileName and assetPath are correctly formatted', () {
    for (final icon in CadIcon.values) {
      expect(icon.fileName, isNotEmpty);
      expect(icon.assetPath, 'assets/icons/${icon.fileName}.svg');
      expect(icon.remoteUrl, contains('raw.githubusercontent.com'));
      expect(icon.remoteUrl, endsWith('${icon.fileName}.svg'));
    }
  });

  test('Specific icons are mapped properly', () {
    expect(CadIcon.threeDPrint.fileName, '3d-print');
    expect(CadIcon.draw3dCube.fileName, 'draw-3d-cube');
    expect(CadIcon.coordinates3dXyz.fileName, 'coordinates-3d-xyz');
    expect(CadIcon.workplaneRotate.fileName, 'workplane-rotate');
  });

  test('Backwards compatibility aliases work', () {
    expect(ToolsIcon.draw3dCube, CadIcon.draw3dCube);
    expect(ToolBarIcons, CadIcons);
  });
}
