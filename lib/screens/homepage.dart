import 'package:da_exhib/screens/Nav/explore.dart';
import 'package:da_exhib/screens/Nav/profile.dart';
import 'package:da_exhib/screens/Nav/upload.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Widget> _pages = [
    Explore(),
    Upload(),
    Profile(),
  ];
  int _selectedIndex = 0;
  void _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: _pages[_selectedIndex],
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.only(left: 32, right: 32, bottom: 20),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(88),
                color: const Color(0xffF09819)),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: GNav(
                selectedIndex: _selectedIndex,
                onTabChange: _navigateBottomBar,
                iconSize: 24,
                textSize: 24,
                padding: const EdgeInsets.all(8),
                backgroundColor: const Color(0xffF09819),
                tabBackgroundColor: const Color(0xffFF512F).withOpacity(0.5),
                activeColor: Colors.white,
                gap: 8,
                // ignore: prefer_const_literals_to_create_immutables
                tabs: [
                  const GButton(
                    icon: FeatherIcons.compass,
                    text: 'Explore',
                    iconColor: Colors.white,
                    textColor: Colors.white,
                  ),
                  const GButton(
                    icon: FeatherIcons.plusCircle,
                    text: 'Upload',
                    iconColor: Colors.white,
                    textColor: Colors.white,
                  ),
                  const GButton(
                    icon: FeatherIcons.user,
                    text: 'Profile',
                    iconColor: Colors.white,
                    textColor: Colors.white,
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
