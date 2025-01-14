import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:audioplayers/audioplayers.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
                SliverAppBar(
                  pinned: true,
                  // floating: true,
                  backgroundColor: Colors.teal,
                  expandedHeight: 100.0,
                  flexibleSpace: FlexibleSpaceBar(
                    title: const Text('NestedScrollView'),
                  ),
                ),
              ],
          body: Center(
            child: ElevatedButton(
                onPressed: () async {
                  AudioCache audioCache=AudioCache();
                  Uri uri = await audioCache.load('music/h.mp3');
                  AudioPlayer player = AudioPlayer();
                  await player.play(UrlSource(uri.toString()));
                  // final player = AudioPlayer();
                  // await player.play(UrlSource('assets/music/h.mp3'));
                },
                child: const Text('play')),
          )),
    );
  }
}
