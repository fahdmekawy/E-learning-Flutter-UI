import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:video_player/video_player.dart';

class VideoScreen extends StatefulWidget {
  @override
  _VideoScreenState createState() => _VideoScreenState();
}

class _VideoScreenState extends State<VideoScreen> {
  VideoPlayerController _videoPlayerController;
  int _playbackTime = 0;

  void _initPlayer() async {
    _videoPlayerController =
        VideoPlayerController.asset("assets/videos/video.mp4");
    await _videoPlayerController.initialize();
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    _initPlayer();
    _videoPlayerController.addListener(() {
      setState(() {
        _playbackTime = _videoPlayerController.value.position.inSeconds;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFF9F9F9),
        body: SlidingUpPanel(
          maxHeight: 350,
          minHeight: 50,
          padding: EdgeInsets.only(top: 10),
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(40), topLeft: Radius.circular(40)),
          panelBuilder: (scrollController) =>
              buildSlidingPabel(scrollController: scrollController),
          body: _videoPlayerController.value.initialized
              ? _playerWidget()
              : Container(
                  color: Color(0xFFF9F9F9),
                ),
        ));
  }

  Widget buildSlidingPabel({@required ScrollController scrollController}) {
    return Stack(
      children: [
        ListView(
          padding: EdgeInsets.only(top: 10),
          controller: scrollController,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      height: 7,
                      width: 75,
                      decoration: BoxDecoration(
                          color: Colors.grey[400].withOpacity(0.5),
                          borderRadius: BorderRadius.circular(30)),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  SvgPicture.asset(
                    "assets/icons/Adobe XD icon.svg",
                    width: 30,
                    height: 30,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  RichText(
                    text: TextSpan(
                      text: 'Adobe XD ',
                      style: TextStyle(
                          fontSize: 30,
                          color: Color(0xFF305F72),
                          fontWeight: FontWeight.bold),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'Essentials',
                          style: TextStyle(
                              color: Color(0xFF305F72),
                              fontWeight: FontWeight.w300),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Container(
                        width: 25,
                        height: 25,
                        decoration: BoxDecoration(
                          color: Color(0xFFF18C8E),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Center(
                          child: Text(
                            "1",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Introduction",
                            style: TextStyle(
                                fontSize: 22, color: Color(0xFF305F72)),
                          ),
                          Text(
                            "2 hours 20 minutes",
                            style: TextStyle(
                                fontSize: 15, color: Color(0xFFF18C8E)),
                          )
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 50,
                  ),
                ],
              ),
            )
          ],
        ),
        Positioned(
          bottom: 0,
          child: Container(
            // margin: EdgeInsets.symmetric(horizontal: 20),
            width: MediaQuery.of(context).size.width,
            height: 100,
            decoration: BoxDecoration(
              color: Color(0xFFF18C8E),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40), topRight: Radius.circular(40)),
            ),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SvgPicture.asset(
                    "assets/icons/previous.svg",
                    height: 30,
                    width: 30,
                    color: Colors.white,
                  ),
                  SvgPicture.asset(
                    "assets/icons/previous-track-button.svg",
                    height: 30,
                    width: 30,
                    color: Colors.white,
                  ),
                  InkWell(
                    onTap: () {
                      _videoPlayerController.value.isPlaying
                          ? _videoPlayerController.pause()
                          : _videoPlayerController.play();
                      setState(() {});
                    },
                    child: Container(
                      width: 75,
                      height: 75,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.white),
                      child: Center(
                        child: _videoPlayerController.value.isPlaying
                            ? Icon(
                                Icons.pause_outlined,
                                color: Color(0xFFF18C8E),
                                size: 50,
                              )
                            : Icon(
                                Icons.play_arrow,
                                color: Color(0xFFF18C8E),
                                size: 50,
                              ),
                      ),
                    ),
                  ),
                  SvgPicture.asset(
                    "assets/icons/play-and-pause-button.svg",
                    height: 30,
                    width: 30,
                    color: Colors.white,
                  ),
                  SvgPicture.asset(
                    "assets/icons/fast-forward-button.svg",
                    height: 30,
                    width: 30,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _playerWidget() {
    return Column(
      // mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        AspectRatio(
          aspectRatio: _videoPlayerController.value.aspectRatio,
          child: VideoPlayer(_videoPlayerController),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            children: [
              Text(
                "${_playbackTime.toDouble()}",
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF305F72)),
              ),
              Spacer(),
              Slider(
                  max: _videoPlayerController.value.duration.inSeconds
                      .toDouble(),
                  value: _playbackTime.toDouble(),
                  min: 0,
                  onChanged: (v) {
                    _videoPlayerController.seekTo(Duration(seconds: v.toInt()));
                  }),
              Spacer(),
              Text(
                "${_videoPlayerController.value.duration.inSeconds - _playbackTime.toDouble()}",
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF305F72)),
              ),
            ],
          ),
        )
      ],
    );
  }
}
