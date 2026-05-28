import 'package:flutter/material.dart';

import '../../../core/common/widgets/custom_bottom_navbar.dart';
import '../../../core/theme/app_colors.dart';

import '../../archives/pages/archives_page.dart';
import '../../home/pages/home_page.dart';
import '../../profile/pages/profile_page.dart';
import '../../tasks/pages/create_task_page.dart';

import '../widgets/navigation_fab.dart';

class MainNavigationPage extends StatefulWidget {
  const MainNavigationPage({super.key});

  @override
  State<MainNavigationPage> createState() =>
      _MainNavigationPageState();
}

class _MainNavigationPageState
    extends State<MainNavigationPage> {

  int currentIndex = 0;

  late final List<Widget> pages;

  @override
  void initState() {
    super.initState();

    pages = const [

      HomePage(),

      ArchivesPage(),

      ProfilePage(),
    ];
  }

  void onNavbarTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  void openCreateTaskSheet() {

    showModalBottomSheet(
      context: context,

      isScrollControlled: true,

      backgroundColor:
          Colors.transparent,

      builder: (_) {
        return const CreateTaskPage();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          AppColors.background,

      /// PAGES
      body: IndexedStack(
        index: currentIndex,
        children: pages,
      ),

      /// GLOBAL FAB
      floatingActionButton:
          NavigationFab(
        onTap: openCreateTaskSheet,
      ),

      floatingActionButtonLocation:
          FloatingActionButtonLocation
              .endFloat,

      /// NAVBAR
      bottomNavigationBar:
          CustomBottomNavbar(
        currentIndex: currentIndex,
        onTap: onNavbarTap,
      ),
    );
  }
}