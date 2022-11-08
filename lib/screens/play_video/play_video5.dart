import 'package:duroos_app/screens/home_screen.dart';
import 'package:duroos_app/screens/play_video/play_video4.dart';
import 'package:duroos_app/screens/play_video/play_video6.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class PlayVideo5 extends StatefulWidget {
  const PlayVideo5({super.key});

  @override
  State<PlayVideo5> createState() => _PlayVideo5State();
}

class _PlayVideo5State extends State<PlayVideo5> {
  late VideoPlayerController _controller;
  late Future<void> _initializeVideoPlayerFuture;

  @override
  void initState() {
    _controller = VideoPlayerController.asset('assets/videoes/wedding2.mp4');
    _initializeVideoPlayerFuture = _controller.initialize();
    _controller.setLooping(true);
    _controller.setVolume(1.0);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo[500],
      appBar: AppBar(
        backgroundColor: Colors.indigo[900],
        title: Center(child: Text("الزواج 2")),
      ),
      body: Column(
        children: [
          Stack(
            children: [
              FutureBuilder(
                future: _initializeVideoPlayerFuture,
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.done) {
                    return AspectRatio(
                      aspectRatio: _controller.value.aspectRatio,
                      child: VideoPlayer(_controller),
                    );
                  } else {
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                },
              ),
              Positioned(
                left: 0,
                right: 0,
                bottom: 0,
                child: buildIndicator(),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {
                  _controller.pause();
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PlayVideo4(),
                    ),
                  );
                },
                icon: Icon(Icons.first_page),
                color: Colors.white,
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    if (_controller.value.isPlaying) {
                      _controller.pause();
                    } else {
                      _controller.play();
                    }
                  });
                },
                icon: Icon(_controller.value.isPlaying
                    ? Icons.pause
                    : Icons.play_arrow),
                color: Colors.white,
              ),
              IconButton(
                onPressed: () {
                  _controller.pause();
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PlayVideo6(),
                    ),
                  );
                },
                icon: Icon(Icons.last_page),
                color: Colors.white,
              ),
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _controller.pause();
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => HomeScreen()));
        },
        child: Icon(Icons.home),
      ),
    );
  }

  Widget buildIndicator() => VideoProgressIndicator(
        _controller,
        allowScrubbing: true,
      );
}
