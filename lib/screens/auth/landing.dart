import 'package:da_exhib/screens/auth/login.dart';
import 'package:da_exhib/screens/auth/register.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scaffold_gradient_background/scaffold_gradient_background.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class Landing extends StatelessWidget {
  const Landing({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 16, right: 16, left: 16),
        child: LayoutBuilder(builder: ((p0, p1) {
          return SafeArea(
            child: Column(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          'DA\'Exhib ',
                          style: GoogleFonts.waitingForTheSunrise(
                              fontSize: 60, color: const Color(0xffF09819)),
                        ),
                        Text(
                          'Art',
                          style: GoogleFonts.waitingForTheSunrise(fontSize: 60),
                        ),
                      ],
                    ),
                    Text(
                      'Gallery',
                      style: GoogleFonts.waitingForTheSunrise(fontSize: 60),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  'Dengan tujuan untuk menyatukan para kreator Seini yang ada di dunia, dibuatlah Art Gallery ini.',
                  style: GoogleFonts.karla(
                      fontSize: 18, fontWeight: FontWeight.w300),
                  textAlign: TextAlign.justify,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.13,
                ),
                Stack(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        RotatedBox(
                          quarterTurns: -1,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              const Text('Facebook'),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.1,
                              ),
                              const Text('Instagram'),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.1,
                              ),
                              const Text('Twitter')
                            ],
                          ),
                        ),
                        SvgPicture.asset(
                          'lib/assets/Landing.svg',
                          width: MediaQuery.of(context).size.width * 0.5,
                          height: MediaQuery.of(context).size.height * 0.5,
                        ),
                      ],
                    ),
                    Positioned(
                      bottom: 5,
                      right: 50,
                      top: 250,
                      child: FloatingActionButton(
                        backgroundColor: const Color(0xffFF512F),
                        onPressed: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Login()));
                        },
                        child: const Icon(
                          FeatherIcons.arrowRight,
                          size: 25,
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          );
        })),
      ),
    );
  }
}
