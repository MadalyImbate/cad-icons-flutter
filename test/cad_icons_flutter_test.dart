import 'package:cad_icons_flutter/cad_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('CadIcon contains all 250 icons', () {
    expect(CadIcon.values.length, 250);
    expect(CadIcon.all.length, 250);
  });

  test('CadIcon is a Widget and can be passed directly', () {
    // Both of the user's exact patterns:
    const Widget iconDirect = CadIcon.select;
    const Widget iconWrapped = CadIcons(CadIcon.select);
    const Widget iconToolBar = ToolBarIcons(ToolsIcon.select, color: Colors.blue);
    final Widget iconCallable = CadIcon.select(color: Colors.blue, size: 28);

    expect(iconDirect, isA<Widget>());
    expect(iconWrapped, isA<Widget>());
    expect(iconToolBar, isA<Widget>());
    expect(iconCallable, isA<Widget>());
  });

  test('CadIcon fileName and assetPath have no machine-local paths', () {
    for (final icon in CadIcon.values) {
      expect(icon.fileName, isNotEmpty);
      expect(icon.assetPath, 'assets/icons/${icon.fileName}.svg');
      expect(icon.package, 'cad_icons_flutter');
      expect(icon.remoteUrl, startsWith('https://raw.githubusercontent.com/'));
      expect(icon.remoteUrl, contains('/cad-icons-flutter/main/assets/icons/'));
    }
  });

  test('Specific icons are mapped properly', () {
    expect(CadIcon.select.fileName, 'select');
    expect(CadIcon.threeDPrint.fileName, '3d-print');
    expect(CadIcon.draw3dCube.fileName, 'draw-3d-cube');
    expect(CadIcon.coordinates3dXyz.fileName, 'coordinates-3d-xyz');
    expect(CadIcon.workplaneRotate.fileName, 'workplane-rotate');
  });

  test('Backwards compatibility aliases work seamlessly', () {
    expect(ToolsIcon.select, CadIcon.select);
    expect(ToolBarIcons, CadIcons);
  });
}
