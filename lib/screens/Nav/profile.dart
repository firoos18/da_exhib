import 'package:da_exhib/screens/Nav/explore.dart';
import 'package:da_exhib/screens/Nav/upload.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: PreferredSize(
          preferredSize: Size(MediaQuery.of(context).size.width,
              MediaQuery.of(context).size.height * 0.25),
          child: Stack(children: [
            AppBar(
              automaticallyImplyLeading: false,
              centerTitle: true,
              backgroundColor: Colors.blue.shade50,
              elevation: 5,
              title: Text(
                'Profile',
                style: GoogleFonts.montserrat(
                    fontSize: 32,
                    fontWeight: FontWeight.w500,
                    color: Colors.black),
              ),
            ),
            Container(),
            Positioned(
              top: 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  const CircleAvatar(
                    radius: 60,
                    backgroundImage: AssetImage('lib/assets/avatar.jpg'),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.1,
                  ),
                  Text(
                    'Firoos',
                    style: GoogleFonts.montserrat(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            )
          ]),
        ),
        body: SafeArea(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
          child: Column(
            children: [Text('Profile')],
          ),
        )),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.only(left: 32, right: 32, bottom: 20),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(88),
                color: const Color(0xffF09819)),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: GNav(
                selectedIndex: 2,
                onTabChange: (value) {
                  if (value == 0) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Explore()));
                  } else if (value == 1) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Upload()));
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
    ;
  }
}
