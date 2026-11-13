# Changelog

All notable changes to this project will be documented in this file.

## 1.0.1

- Fix: Ensure `assets/icons/` directory is bundled in the pub.dev release archive.
- Feature: Allow `CadIcon` to be used directly as a `Widget` (e.g. `IconButton(icon: CadIcon.select)`).
- Feature: Support both `icon: CadIcons(CadIcon.select)` and `icon: CadIcon.select`.
- Feature: Add backwards-compatibility aliases `ToolBarIcons` and `ToolsIcon`.
- Feature: Add `.call()` method on `CadIcon` for inline overrides (e.g. `CadIcon.select(color: Colors.blue)`).

## 1.0.0

- Initial release on pub.dev.
- 250+ technical CAD vector icons.
- Built-in `CadIcons` widget with `IconTheme` compatibility.
- Remote hover previews in VS Code, Android Studio, and pub.dev documentation.
