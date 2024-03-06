import 'package:flutter/material.dart';

enum ContainerType { simple }

class SyncContainers {
  Map<ContainerType, Widget> containers = {
    ContainerType.simple: ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: Container(
        height: 100,
        width: 350,
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.redAccent,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              spreadRadius: 2,
              blurRadius: 5,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.warning,
              color: Colors.white,
            ),
            SizedBox(width: 8),
            Text(
              'No internet connection!',
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    )
  };

  static Widget getContainer(ContainerType type) {
    return SyncContainers().containers[type]!;
  }
}
