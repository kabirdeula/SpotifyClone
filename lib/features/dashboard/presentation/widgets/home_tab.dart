import 'package:flutter/material.dart';
import 'package:spotify_clone/core/widgets/app_text.dart';
import 'package:spotify_clone/features/dashboard/dashboard.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: NeverScrollableScrollPhysics(),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 238,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context, index) => MusicGrid(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppText(text: "Playlist", appTextStyle: AppTextStyle.body),
                AppText(text: "See More")
              ],
            ),
          ),
          SizedBox(height: 6),
          ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) => MusicList(),
            shrinkWrap: true,
            itemCount: 10,
            separatorBuilder: (BuildContext context, int index) =>
                SizedBox(height: 6),
          ),
        ],
      ),
    );
  }
}
