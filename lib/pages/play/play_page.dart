import 'package:d_moive/models/moive.dart';
import 'package:d_moive/themes/dimensions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:media_kit/media_kit.dart';
import 'package:media_kit_video/media_kit_video.dart';

class PlayPage extends StatefulWidget {
  const PlayPage({super.key});

  @override
  State<PlayPage> createState() => _PlayPageState();
}

class _PlayPageState extends State<PlayPage> {
  late final player = Player();
  late final controller = VideoController(player);

  late Moive moive;

  @override
  void initState() {
    super.initState();
    moive = Get.arguments;
    // Play a [Media] or [Playlist].
    player.open(Media('asset:///assets/x.mp4'));
  }

  @override
  void dispose() {
    player.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          MaterialVideoControlsTheme(
            normal: MaterialVideoControlsThemeData(
              // Modify theme options:
              buttonBarButtonSize: 24.0,
              buttonBarButtonColor: Colors.white,
              // Modify top button bar:
              topButtonBar: [
                BackButton(),
              ],
              bottomButtonBar: const [
                Spacer(),
                MaterialPositionIndicator(),
              ],
              seekBarPositionColor: Colors.white,
              seekBarColor: Colors.black,
              seekBarThumbColor: Colors.white,
              topButtonBarMargin: EdgeInsets.zero,
            ),
            fullscreen: const MaterialVideoControlsThemeData(
              // Modify theme options:
              displaySeekBar: false,
              automaticallyImplySkipNextButton: false,
              automaticallyImplySkipPreviousButton: false,
            ),
            child: AspectRatio(
              aspectRatio: 16 / 9,
              child: Video(
                controller: controller,
              ),
            ),
          ),

          Padding(
            padding: Dimensions.pageAllPadding,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  moive.ename,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.w600,
                  ),
                ),

                Text(
                  moive.name,
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white60,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
