import 'package:flutter/material.dart';
import 'package:spotify_clone/core/constants/constants.dart';
import 'package:spotify_clone/core/widgets/app_text.dart';
import 'package:spotify_clone/features/dashboard/dashboard.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: AlwaysScrollableScrollPhysics(),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.all(16.0),
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24.0),
                  ),
                  color: AppColors.primary,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppText(text: "New Album"),
                    AppText(
                        text: "Happier Than Ever",
                        appTextStyle: AppTextStyle.subtitle),
                    AppText(text: "Billie Eilish"),
                  ],
                ),
              ),
            ),
            DefaultTabController(
              length: ListStrings.tabs.length,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: TabBar(tabs: ListStrings.tabs, isScrollable: true),
                  ),
                  SizedBox(height: 8),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 1.1,
                    child: TabBarView(
                      physics: NeverScrollableScrollPhysics(),
                      children: [
                        HomeTab(),
                        HomeTab(),
                        HomeTab(),
                        HomeTab(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
