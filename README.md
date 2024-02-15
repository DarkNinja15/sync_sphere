# sync_sphere

A Flutter package for constant internet connectivity checking throughout the app.

## Features

- Monitors internet connectivity in the background.
- Displays a user-friendly screen when there is no internet connection.
- Includes a retry button to recheck and restore the internet connection.
- Customizable options for the internet connectivity screen.

## Getting Started

1. Add the `sync_sphere` package to your `pubspec.yaml` file:

```yaml
dependencies:
  sync_sphere: ^0.0.1
```

2. Run pub get
 
 ```
 flutter pub get
 ```

3. import your package

```
import 'package:sync_sphere/sync_sphere.dart';
```

4. Wrap child of your MaterialApp with the SyncSphere widget

```
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SyncSphere(
        child: YourMainScreen(),
        whenOffine: YourOfflineScreen(),
      ),
    );
  }
}
```
