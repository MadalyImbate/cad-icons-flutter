# 🚀 Guia de Uso: cad_icons_flutter

O pacote [`cad_icons_flutter`](https://pub.dev/packages/cad_icons_flutter) fornece **250+ ícones CAD e técnicos** vetoriais para Flutter com suporte nativo a `IconTheme` e preview automático ao passar o cursor no VS Code, Android Studio e pub.dev.

---

## 📦 1. Instalação

Adicione a dependência ao seu projeto:

```bash
flutter pub add cad_icons_flutter
```

Ou declare no seu `pubspec.yaml`:

```yaml
dependencies:
  flutter:
    sdk: flutter
  cad_icons_flutter: ^1.0.1
```

> **Não é necessário configurar `assets:` no seu `pubspec.yaml`!** Todos os 250+ ícones já vêm empacotados dentro do pacote.

---

## 🎯 2. Utilização Básica

Importe o pacote:

```dart
import 'package:cad_icons_flutter/cad_icons_flutter.dart';
```

### Estilo 1: Direto via `CadIcon` (Mais conciso)
Como `CadIcon` implementa `Widget`, você pode passá-lo diretamente onde um `Widget` é esperado:

```dart
IconButton(
  onPressed: () {},
  isSelected: true,
  selectedIcon: const ToolBarIcons(ToolsIcon.select, color: Colors.blue),
  icon: CadIcon.select,
  tooltip: 'Select',
)
```

### Estilo 2: Via `CadIcons` ou `ToolBarIcons`

```dart
IconButton(
  onPressed: () {},
  isSelected: true,
  selectedIcon: const ToolBarIcons(ToolsIcon.select, color: Colors.blue),
  icon: CadIcons(CadIcon.select),
  tooltip: 'Select',
)
```

### Estilo 3: Sobrescrita de Cor e Tamanho com `.call()`

```dart
CadIcon.select(color: Colors.blue, size: 28)
```

---

## 🎨 3. Compatibilidade Nativa com `IconTheme`

O widget `CadIcon` responde automaticamente ao `IconTheme` do Flutter. Isso significa que ele herda o tamanho e a cor definidos pelo tema pai (como dentro de `AppBar`, `IconButton`, `FloatingActionButton` ou `ThemeData`):

```dart
IconTheme(
  data: const IconThemeData(
    size: 32,
    color: Colors.teal,
  ),
  child: Row(
    children: const [
      CadIcon.drawCircle,
      SizedBox(width: 12),
      CadIcon.modify3dExtrude,
      SizedBox(width: 12),
      CadIcon.measureDistance,
    ],
  ),
)
```

---

## 🔍 4. Hover Preview no VS Code e Android Studio

Cada constante de `CadIcon` inclui documentação e preview remoto em markdown:

Ao passar o mouse por cima de `CadIcon.draw3dCube` ou `CadIcon.select`, a sua IDE exibirá uma pré-visualização vetorial imediata do ícone!

---

## 🌐 5. Catálogo Online Interativo

Você pode testar e pesquisar todos os 250+ ícones interativamente no catálogo web:
👉 **[Ver Catálogo Online](https://madalyimbate.github.io/cad-icons-flutter/)**
