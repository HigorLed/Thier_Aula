## **Copilot Instructions (project-specific)**

This file gives concise, actionable guidance for AI coding agents working on this Flutter project so they are immediately productive.

## **Repo Overview**
- **Type:** Flutter multi-platform app (Android, iOS, macOS, Linux, Windows, Web).
- **Entry point:** `lib/main.dart` — prefer edits here for app-level changes.
- **UI widgets:** `lib/widgets/` contains isolated widget components (example: `lib/widgets/titulo_sessao.dart`).

## **Build / Run / Test**
- **Fetch deps:** run `flutter pub get` at the repo root.
- **Run on Windows (local):** use `flutter run -d windows` or run `windows/runner` targets.
- **Android builds (Windows):** use the Gradle wrapper `android\gradlew.bat assembleDebug` or `flutter build apk`.
- **Web:** `flutter run -d chrome` or `flutter build web`.
- **Tests:** `flutter test` (there is `test/widget_test.dart`).

## **Generated artifacts & codegen**
- **Do not edit** files under `build/` — they are generated (examples: `gen_dart_plugin_registrant.stamp`, `gen_localizations.stamp`).
- To regenerate platform plugin registration and other generated outputs, run a normal Flutter build or `flutter run` after updating `pubspec.yaml`.

## **Platform integration points**
- **Android:** `android/app/build.gradle.kts` and the Gradle wrapper (`android/gradlew`, `android/gradlew.bat`) control native builds.
- **iOS:** plugin registration and platform setup appear in `ios/Runner/GeneratedPluginRegistrant.*` and `ios/Runner/Info.plist`.
- **Windows/Linux/macOS:** generated plugin registrants exist under `windows/` and `linux/` platform folders — update Dart/Flutter side, then rebuild to propagate native registration.

## **Project-specific patterns & conventions**
- **Keep UI logic in `lib/widgets/` and app wiring in `lib/main.dart`.** Small widgets are composed and reused across screens.
- **Assets & fonts:** referenced in `build/flutter_assets` and platform asset catalogs (example: `ios/Runner/Assets.xcassets`).
- **Don't edit generated platform files** — instead change the Dart code or `pubspec.yaml` and rebuild.

## **Where to look for changes related to:**
- **Localization / generated locs:** `build/gen_localizations.*` stamps indicate Flutter localization generation.
- **Plugin registration:** `ios/Runner/GeneratedPluginRegistrant.*`, `linux/flutter/generated_plugin_registrant.*`, `windows/flutter/generated_plugin_registrant.*`.

## **Examples (how to apply common tasks)**
- **Add a new widget:** create file in `lib/widgets/`, import it in `lib/main.dart` or the feature screen, run `flutter analyze` and `flutter test`.
- **Modify Android native build settings:** edit `android/app/build.gradle.kts`, then run `android\\gradlew.bat assembleDebug` on Windows to verify.
- **Debugging failing plugin on iOS:** check `ios/Runner/GeneratedPluginRegistrant.*` after a `flutter run` to confirm registration; prefer fixing Dart-side plugin calls first.

## **Agent behavior expectations**
- **Avoid editing** files in `build/` or platform-generated registrants directly.
- **Prefer Dart-level fixes** (in `lib/`) and run Flutter build/test to validate.
- **Make minimal, focused changes** with clear intent and include a short rationale in commit messages.

If any guidance above is unclear or you want more examples (e.g., a sample change and verification steps), tell me which area to expand.
