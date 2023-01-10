import 'package:da_exhib/screens/auth/landing.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF09819),
      body: Padding(
        padding: const EdgeInsets.only(top: 60, right: 10, left: 10),
        child: LayoutBuilder(
          builder: (p0, p1) {
            return SafeArea(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        'lib/assets/Logo.svg',
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Text(
                        'Da\'',
                        style: GoogleFonts.montserrat(
                            fontSize: 36,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      Text(
                        'Exhib',
                        style: GoogleFonts.montserrat(
                            fontSize: 36,
                            fontWeight: FontWeight.w500,
                            color: Colors.black),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.07,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color(0xffF8FAFF)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 17, vertical: 20),
                      child: Column(
                        children: [
                          Text(
                            'Register',
                            style: GoogleFonts.montserrat(
                              fontSize: 36,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Text(
                            'Let\'s create an account so you can interact and upland an Art.',
                            style: GoogleFonts.montserrat(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(
                            height: 28,
                          ),
                          TextField(
                            cursorColor: const Color(0xffF09819),
                            decoration: InputDecoration(
                                floatingLabelStyle: GoogleFonts.montserrat(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: const Color(0xffFF512F)),
                                floatingLabelAlignment:
                                    FloatingLabelAlignment.start,
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12),
                                    borderSide: const BorderSide(
                                        color: Color(0xffFF512F))),
                                label: Text(
                                  'Username',
                                  style: GoogleFonts.montserrat(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500),
                                ),
                                border: const OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(12)),
                                    borderSide: BorderSide(
                                        width: 4, color: Color(0xff121212)))),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          TextField(
                            cursorColor: const Color(0xffF09819),
                            decoration: InputDecoration(
                                floatingLabelStyle: GoogleFonts.montserrat(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: const Color(0xffFF512F)),
                                floatingLabelAlignment:
                                    FloatingLabelAlignment.start,
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12),
                                    borderSide: const BorderSide(
                                        color: Color(0xffFF512F))),
                                label: Text(
                                  'Fullname',
                                  style: GoogleFonts.montserrat(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500),
                                ),
                                border: const OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(12)),
                                    borderSide: BorderSide(
                                        width: 4, color: Color(0xff121212)))),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: TextField(
                                  cursorColor: const Color(0xffF09819),
                                  decoration: InputDecoration(
                                      floatingLabelStyle:
                                          GoogleFonts.montserrat(
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold,
                                              color: const Color(0xffFF512F)),
                                      floatingLabelAlignment:
                                          FloatingLabelAlignment.start,
                                      focusedBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(12),
                                          borderSide: const BorderSide(
                                              color: Color(0xffFF512F))),
                                      label: Text(
                                        'Gender',
                                        style: GoogleFonts.montserrat(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      border: const OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(12)),
                                          borderSide: BorderSide(
                                              width: 4,
                                              color: Color(0xff121212)))),
                                ),
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              Expanded(
                                child: TextField(
                                  cursorColor: const Color(0xffF09819),
                                  decoration: InputDecoration(
                                      floatingLabelStyle:
                                          GoogleFonts.montserrat(
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold,
                                              color: const Color(0xffFF512F)),
                                      floatingLabelAlignment:
                                          FloatingLabelAlignment.start,
                                      focusedBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(12),
                                          borderSide: const BorderSide(
                                              color: Color(0xffFF512F))),
                                      label: Text(
                                        'Birth',
                                        style: GoogleFonts.montserrat(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      border: const OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(12)),
                                          borderSide: BorderSide(
                                              width: 4,
                                              color: Color(0xff121212)))),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          TextField(
                            cursorColor: const Color(0xffF09819),
                            decoration: InputDecoration(
                                floatingLabelStyle: GoogleFonts.montserrat(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: const Color(0xffFF512F)),
                                floatingLabelAlignment:
                                    FloatingLabelAlignment.start,
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12),
                                    borderSide: const BorderSide(
                                        color: Color(0xffFF512F))),
                                label: Text(
                                  'Password',
                                  style: GoogleFonts.montserrat(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500),
                                ),
                                border: const OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(12)),
                                    borderSide: BorderSide(
                                        width: 4, color: Color(0xff121212)))),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          TextField(
                            cursorColor: const Color(0xffF09819),
                            decoration: InputDecoration(
                                floatingLabelStyle: GoogleFonts.montserrat(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: const Color(0xffFF512F)),
                                floatingLabelAlignment:
                                    FloatingLabelAlignment.start,
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12),
                                    borderSide: const BorderSide(
                                        color: Color(0xffFF512F))),
                                label: Text(
                                  'Re - Password',
                                  style: GoogleFonts.montserrat(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500),
                                ),
                                border: const OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(12)),
                                    borderSide: BorderSide(
                                        width: 4, color: Color(0xff121212)))),
                          ),
                          const SizedBox(
                            height: 12,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                'Forgot Password?',
                                style: GoogleFonts.montserrat(
                                    fontSize: 10, fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 42,
                          ),
                          SizedBox(
                            height: 48,
                            width: MediaQuery.of(context).size.width,
                            child: ElevatedButton(
                              onPressed: () {},
                              style: FilledButton.styleFrom(
                                  elevation: 0,
                                  backgroundColor: const Color(0xffF09819),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12))),
                              child: Text(
                                'Sign In',
                                style: GoogleFonts.montserrat(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Don\'t have any account?',
                                style: GoogleFonts.montserrat(
                                    fontSize: 12, fontWeight: FontWeight.w500),
                              ),
                              Text(
                                'Register',
                                style: GoogleFonts.montserrat(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700,
                                    color: const Color(0xffFF512F)),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
