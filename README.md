# sync_sphere

A Flutter package for constant internet connectivity checking throughout the app.

## Features

- Monitors internet connectivity.
- Displays a user-friendly screen when there is no internet connection.
- Customizable options for the internet connectivity screen.

## Getting Started

1. Add the `sync_sphere` package to your `pubspec.yaml` file:

```yaml
dependencies:
  sync_sphere: ^0.0.3
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
        whenOffine: YourOfflineScreenWidget(),
      ),
    );
  }
}
```

5. You can also use the default "No internet" widget

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
      ),
    );
  }
}
```
