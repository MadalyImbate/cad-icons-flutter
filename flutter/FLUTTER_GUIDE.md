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
  cad_icons_flutter: ^1.0.0
```

> **Não é necessário configurar `assets:` no seu `pubspec.yaml`!** Todos os 250+ ícones já vêm empacotados dentro do pacote.

---

## 🎯 2. Utilização Básica

Importe o pacote:

```dart
import 'package:cad_icons_flutter/cad_icons_flutter.dart';
```

### Exemplo com `CadIcons`:

```dart
// Renderização padrão:
CadIcons(CadIcon.draw3dCube)

// Com tamanho e cor personalizados:
CadIcons(
  CadIcon.threeDPrint,
  size: 32,
  color: Colors.blueAccent,
)
```

---

## 🎨 3. Compatibilidade Nativa com `IconTheme`

O widget `CadIcons` responde automaticamente ao `IconTheme` do Flutter. Isso significa que ele herda o tamanho e a cor definidos pelo tema pai (como dentro de `AppBar`, `IconButton`, `FloatingActionButton` ou `ThemeData`):

```dart
IconTheme(
  data: const IconThemeData(
    size: 32,
    color: Colors.teal,
  ),
  child: Row(
    children: const [
      CadIcons(CadIcon.drawCircle),
      SizedBox(width: 12),
      CadIcons(CadIcon.modify3dExtrude),
      SizedBox(width: 12),
      CadIcons(CadIcon.measureDistance),
    ],
  ),
)
```

---

## 🔍 4. Hover Preview no VS Code e Android Studio

Cada valor do enum `CadIcon` inclui documentação e preview remoto em markdown:

Ao passar o mouse por cima de `CadIcon.draw3dCube` ou `CadIcon.assemblyExplodedView`, a sua IDE exibirá uma pré-visualização vetorial imediata do ícone!

---

## 🌐 5. Catálogo Online Interativo

Você pode testar e pesquisar todos os 250+ ícones interativamente no catálogo web:
👉 **[Ver Catálogo Online](https://madalyimbate.github.io/cad-icons-flutter/)**
