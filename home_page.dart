import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatelessWidget {
  bool isFullScreen = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.fullscreen),
            onPressed: () {
              manageFullScreen();
            },
          )
        ],
      ),
      body: Center(
        child: Text('Full Screen Demo'),
      ),
    );
  }

  void manageFullScreen() {
    isFullScreen = !isFullScreen;

    if (isFullScreen) {
      SystemChrome.setEnabledSystemUIOverlays([]);
    } else {
      SystemChrome.setEnabledSystemUIOverlays(
          [SystemUiOverlay.top, SystemUiOverlay.bottom]);
    }
  }
}
