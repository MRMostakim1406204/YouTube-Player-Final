import 'package:flutter/material.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final _controller = YoutubePlayerController();
  final videoURL = "https://www.youtube.com/watch?v=APDuuaoLH9Q&t=318s";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller.loadVideoById(videoId: "APDuuaoLH9Q");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text("YouTube Player",style: TextStyle(color: Colors.white),),
      ),
    body: Column(
      children: [
        Padding(padding: EdgeInsets.all(8),
        child: Center(
          child: YoutubePlayer(
            controller: _controller,
            aspectRatio: 1/0.6,
            ),
        ),),
        Center(
          child: Text("You need internet connection to play this video"),
        )
      ],
    ),
    );
  }
}