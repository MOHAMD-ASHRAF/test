import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

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
          body: ListView.builder(
            itemCount: 101,
            itemBuilder: (context, index) {
              return SizedBox(
                height: 100.0,
                child: Shimmer.fromColors(
                  baseColor: Colors.grey.shade300,
                  highlightColor: Colors.grey.shade100,
                  child: ListTile(
                    leading: Container(height: 50.0, width: 50.0, color: Colors.grey.shade300),
                    title: Container(height: 10.0, color: Colors.white),
                    subtitle: SizedBox(child: Container(height: 10.0, color: Colors.white,width: 20,)),
                  )
                ),
              );
            },
          )
      ),
    );
  }
}
