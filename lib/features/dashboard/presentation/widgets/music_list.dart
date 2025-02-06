import 'package:flutter/material.dart';

class MusicList extends StatelessWidget {
  const MusicList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: ListTile(
        tileColor: Colors.white70,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        title: Text("As it Was"),
        leading: Icon(Icons.play_arrow),
        subtitle: Text("Harry Styles"),
        trailing: Icon(Icons.favorite),
        // contentPadding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 0.0),
      ),
    );
  }
}
