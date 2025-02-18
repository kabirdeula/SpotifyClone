import 'package:flutter/material.dart';
import 'package:spotify_clone/core/widgets/app_text.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          // height: 316,
          decoration: BoxDecoration(
            color: Colors.white70,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(24),
              bottomRight: Radius.circular(24),
            ),
          ),
          child: Column(
            spacing: 16,
            children: [
              const CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage(
                    "https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png"),
              ),
              AppText(text: "kabirdeula167@gmail.com"),
              AppText(text: "Kabir Deula", appTextStyle: AppTextStyle.subtitle),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      AppText(text: "748", appTextStyle: AppTextStyle.subtitle),
                      AppText(
                        text: "Followers",
                        appTextStyle: AppTextStyle.body,
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      AppText(text: "748", appTextStyle: AppTextStyle.subtitle),
                      AppText(
                        text: "Following",
                        appTextStyle: AppTextStyle.body,
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 4),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          child: AppText(
            text: "Public Playlists".toUpperCase(),
            appTextStyle: AppTextStyle.body,
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
        ),
        Expanded(
          child: ListView.separated(
            separatorBuilder: (BuildContext context, int index) =>
                SizedBox(height: 6),
            itemCount: 10,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: ListTile(
                  tileColor: Colors.white70,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  leading: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.0),
                      image: DecorationImage(
                        image: NetworkImage(
                          "https://picsum.photos/200?random=$index",
                        ),
                      ),
                    ),
                  ),
                  title: Text("Don't Smile At Me"),
                  subtitle: Text("Billie Eilish"),
                  trailing: Icon(Icons.more_horiz),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
