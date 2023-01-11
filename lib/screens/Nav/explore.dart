import 'package:da_exhib/screens/Nav/profile.dart';
import 'package:da_exhib/screens/Nav/upload.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class Explore extends StatefulWidget {
  const Explore({super.key});

  @override
  State<Explore> createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text(
            'EXPLORE',
            style: GoogleFonts.montserrat(
                fontSize: 32, fontWeight: FontWeight.w500, color: Colors.black),
          ),
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(right: 8, left: 8, top: 32),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 36,
                    child: TextField(
                      decoration: InputDecoration(
                          prefixIcon: const Icon(
                            FeatherIcons.search,
                            color: Colors.white,
                          ),
                          filled: true,
                          fillColor: const Color(0xffF09819),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide.none)),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    child: ListView(),
                  ),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.only(left: 32, right: 32, bottom: 20),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(88),
                color: const Color(0xffF09819)),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: GNav(
                selectedIndex: 0,
                onTabChange: (value) {
                  if (value == 1) {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Upload()));
                  } else if (value == 2) {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Profile()));
                  }
                },
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
