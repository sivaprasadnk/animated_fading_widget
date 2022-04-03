# Animated Fading Widget

Looking to FadeInOut your widget continuously with a specified duration? AnimatedFadingWidget is your solution. Just provide the duration and the widget will continuously fade in and out.

![Image](https://github.com/sivaprasadnk/animated_fading_widget/blob/main/screenshots/screen-capture.gif)
## Getting Started

Add this to your package's `pubspec.yaml` file

```yaml
dependencies:
  animated_fading_widget: ^0.0.2
```

## Usage

Next, you just have to import the package using:

```dart
import 'package:animated_fading_widget/animated_fading_widget.dart';
```


```dart
  Widget build(BuildContext context) {
    return AnimatedFadingWidget(
        child: Text(
            'Welcome !',
            style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 50,
            ),
        ),
        duration: Duration(seconds: 2),
    );
  }
```
## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.