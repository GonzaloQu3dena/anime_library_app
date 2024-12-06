# My Anime Library App

## Summary

My Anime Library App is a Flutter-based mobile application that allows users to explore characters from the anime *One Piece*. The app displays detailed character pages with images, background colors, and creator information. With smooth animations and a user-friendly interface, the app provides an engaging way to explore anime content.

<p align="center">
  <img src="https://media.discordapp.net/attachments/1313723409972330536/1314640862466277429/image.png?ex=67548236&is=675330b6&hm=2088bba15b35335ef738fbf887c5e99b808df721ab04ff74d6f6d60e8783fd51&=&format=webp&quality=lossless&width=311&height=693" alt="app-evidence" width="200"/>
</p>  

## Features

Main features included in this project are:

- Explore and view detailed character information from *One Piece*.
- Smooth animations for transitions and image displays.
- Custom widgets for displaying character details, creator information, and more.
- Easy navigation between the library and character detail screens.

## Framework

This project was built using [Flutter](https://flutter.dev/) framework.

Key libraries and tools used in the project:
- [Flutter SDK](https://flutter.dev/docs/get-started/install)
- [Material Design](https://material.io/develop/flutter) (for UI components)

## Development setup

To get started with the development of this project, follow these steps:

1. Clone the repository:
    ```bash
    git clone https://github.com/your-username/my_anime_library_app.git
    ```

2. Navigate into the project directory:
    ```bash
    cd my_anime_library_app
    ```

3. Install dependencies:
    ```bash
    flutter pub get
    ```

4. Run the app on an emulator or connected device:
    ```bash
    flutter run
    ```

The app will automatically reload if you make changes to any of the source files.

## YAML Configuration

Ensure that you add the following to your `pubspec.yaml` file under the `flutter` section to include assets:

```yaml
flutter:
  uses-material-design: true
  assets:
    - assets/
```

## Building the app

To build the project for release, run the following command:

```bash
flutter build apk
```

This will generate the APK file for Android. For iOS, you can use:

```bash
flutter build ios
```
