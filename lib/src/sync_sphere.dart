import 'package:flutter/material.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:sync_sphere/src/containers/sync_containers.dart';

class SyncSphere extends StatefulWidget {
  SyncSphere({super.key, required this.child, Widget? whenOffine})
      : whenOffine =
            whenOffine ?? SyncContainers.getContainer(ContainerType.simple);

  /// The widget to display when the device is online.
  final Widget child;

  /// The widget to display when the device is offline.
  final Widget whenOffine;

  @override
  State<SyncSphere> createState() => _SyncSphereState();
}

class _SyncSphereState extends State<SyncSphere> {
  late Connectivity _connectivity;
  late bool _isConnected;

  @override
  void initState() {
    super.initState();
    _connectivity = Connectivity();
    _isConnected = false;

    _connectivity.onConnectivityChanged.listen((ConnectivityResult result) {
      setState(() {
        _isConnected = result != ConnectivityResult.none;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        widget.child,
        if (!_isConnected)
          Positioned(bottom: 10, child: buildNoInternetScreen()),
      ],
    );
  }

  Widget buildNoInternetScreen() {
    return widget.whenOffine;
  }

  Future<bool> checkInternetConnection() async {
    var result = await _connectivity.checkConnectivity();
    return result != ConnectivityResult.none;
  }
}
