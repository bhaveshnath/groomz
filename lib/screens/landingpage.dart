import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Stack(children: [
      Image.network(
        "https://i.pinimg.com/originals/0b/99/d5/0b99d544e9f9fce968c7a863db297ec2.jpg",
        height: height,
        width: double.infinity,
        fit: BoxFit.fill,
      ),
      Align(
        alignment: Alignment.bottomCenter,
        child: Container(
            width: double.infinity,
            height: height,
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                Colors.black.withOpacity(0.9),
                Colors.black.withOpacity(0.8),
                Colors.black.withOpacity(0.7),
                Colors.black.withOpacity(0.6),
                Colors.black.withOpacity(0.4),
                Colors.black.withOpacity(0.3),
                Colors.black.withOpacity(0.2),
                Colors.black.withOpacity(0.1),
              ], begin: Alignment.bottomCenter, end: Alignment.topCenter),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                children: [
                  SizedBox(
                    height: 500,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    width: double.infinity,
                    height: 50,
                    decoration: BoxDecoration(
                        color: Colors.redAccent,
                        borderRadius: BorderRadius.circular(16)),
                    child: FlatButton.icon(
                        color: Colors.redAccent,
                        onPressed: null,
                        icon: SvgPicture.asset(
                          "assets/icons/google.svg",
                          width: 20,
                          color: Colors.white,
                        ),
                        label: Text(
                          "Continue with Google",
                          style: TextStyle(color: Colors.white),
                        )),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    width: double.infinity,
                    height: 50,
                    decoration: BoxDecoration(
                        color: Colors.blueAccent,
                        borderRadius: BorderRadius.circular(16)),
                    child: FlatButton.icon(
                        color: Colors.blueAccent,
                        onPressed: null,
                        icon: SvgPicture.asset(
                          "assets/icons/facebook.svg",
                          width: 20,
                          color: Colors.white,
                        ),
                        label: Text(
                          "Continue with Facebook",
                          style: TextStyle(color: Colors.white),
                        )),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Already have an account ?",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                      Text(
                        " Sign in",
                        style: TextStyle(color: Colors.redAccent, fontSize: 18),
                      )
                    ],
                  )
                ],
              ),
            )),
      ),
      Align(
        alignment: Alignment.center,
        child: Text(
          "Book an Appointment for\nSalon,Spa & Barber",
          style: GoogleFonts.montserrat(
              textStyle: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.normal,
                  color: Colors.white)),
        ),
      ),
    ]));
  }
}
