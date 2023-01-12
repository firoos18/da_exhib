import 'package:da_exhib/components/artworktab.dart';
import 'package:da_exhib/components/liketab.dart';
import 'package:da_exhib/components/profiletab.dart';
import 'package:da_exhib/screens/Nav/explore.dart';
import 'package:da_exhib/screens/Nav/upload.dart';
import 'package:flutter/gestures.dart';
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
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          backgroundColor: Colors.white,
          appBar: PreferredSize(
            preferredSize: Size(MediaQuery.of(context).size.width,
                MediaQuery.of(context).size.height * 0.25),
            child: Stack(children: [
              AppBar(
                automaticallyImplyLeading: false,
                centerTitle: true,
                backgroundColor: Colors.orangeAccent.shade200,
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
              ),
            ]),
          ),
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4),
              child: Column(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Center(
                    child: TabBar(
                      unselectedLabelColor: Colors.black.withOpacity(0.5),
                      unselectedLabelStyle:
                          TextStyle(color: Colors.black.withOpacity(0.3)),
                      indicatorColor: Colors.amber,
                      indicatorWeight: 3,
                      isScrollable: true,
                      tabs: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.4,
                          child: Tab(
                            child: Text(
                              'Profile',
                              style: GoogleFonts.montserrat(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.4,
                          child: Tab(
                            child: Text(
                              'My Artworks',
                              style: GoogleFonts.montserrat(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.4,
                          child: Tab(
                            child: Text('Likes',
                                style: GoogleFonts.montserrat(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black),
                                textAlign: TextAlign.center),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Expanded(
                    child: TabBarView(children: [
                      ProfileTab(),
                      ArtworkTab(),
                      LikeTab(),
                    ]),
                  )
                ],
              ),
            ),
          )),
    );
  }
}
