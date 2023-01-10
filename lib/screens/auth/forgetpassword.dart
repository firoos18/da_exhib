import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 118, left: 10, right: 10),
        child: LayoutBuilder(builder: ((p0, p1) {
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
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color(0xffF8FAFF)),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 17, vertical: 20),
                  child: Column(
                    children: [
                      Text(
                        'Reset Password',
                        style: GoogleFonts.montserrat(
                          fontSize: 36,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        'Enter a valid email, we will send a password reset email.',
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
                                borderSide:
                                    const BorderSide(color: Color(0xffFF512F))),
                            label: Text(
                              'Email',
                              style: GoogleFonts.montserrat(
                                  fontSize: 12, fontWeight: FontWeight.w500),
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
                            'Send',
                            style: GoogleFonts.montserrat(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ));
        })),
      ),
    );
  }
}
