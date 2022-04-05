import 'package:flutter/material.dart';
import 'package:better_player/better_player.dart';
import 'package:flutter/foundation.dart';

class PlayerVideo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AspectRatio(
        aspectRatio: 16 / 9,
        child: BetterPlayer.network(
          "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerBlazes.mp4",
          betterPlayerConfiguration: BetterPlayerConfiguration(
            aspectRatio: 16 / 9,
            fullScreenByDefault: true,
            autoDetectFullscreenAspectRatio: true,
          ),
        ),
      ),
    );
  }
}