import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:spotify_clone/core/dependency_injection/dependency_injection.dart';
import 'package:spotify_clone/core/widgets/widgets.dart';
import 'package:spotify_clone/features/dashboard/dashboard.dart';
import 'package:spotify_clone/features/profile/profile.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
    final List<Widget> screens = const [
      HomeScreen(),
      HomeScreen(),
      ProfileScreen(),
    ];
    return BlocBuilder<DashboardCubit, DashboardState>(
      builder: (context, state) {
        if (state.isLoading) {
          return const Scaffold(
            body: Center(child: CircularProgressIndicator()),
          );
        }
        return Scaffold(
          appBar: CustomAppBar(
            isTitle: false,
            titleWidget: brandingImage(scale: 2.8),
            leading: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search_sharp, size: 45),
            ),
            actions: [
              IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))
            ],
          ),
          body: screens[state.index],
          bottomNavigationBar: NavigationBar(
            selectedIndex: state.index,
            onDestinationSelected: (value) =>
                sl<DashboardCubit>().updateIndex(value),
            destinations: [
              NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
              NavigationDestination(
                  icon: Icon(Icons.favorite), label: 'Favorite'),
              NavigationDestination(icon: Icon(Icons.person), label: 'Profile'),
            ],
          ),
        );
      },
    );
  }
}
