import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Explore extends StatefulWidget {
  const Explore({super.key});

  @override
  State<Explore> createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
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
          padding: const EdgeInsets.only(right: 24, left: 24, top: 32),
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
                  height: MediaQuery.of(context).size.height * 0.75,
                  child: ListView(),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 32),
        child: SizedBox(
          height: 55,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 90),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xffF09819),
                borderRadius: BorderRadius.circular(88),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SvgPicture.asset('lib/assets/Profile.svg'),
                    SvgPicture.asset('lib/assets/Upload.svg'),
                    SvgPicture.asset('lib/assets/Explore.svg'),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
