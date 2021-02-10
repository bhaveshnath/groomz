import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:groomz/utils/size_config.dart';
import 'package:groomz/widgets/circularavatar.dart';

const kPrimaryColor = Color(0xFF323441);
const kSecondaryColor1 = Color(0xFF232323);
const kPrimaryLightColor = Color(0xFFFFECDF);
const double kpadding = 15;
const TextIconcolor = Color(0xFFDAA520);
const kPrimaryGradientColor = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [Color(0xFF41c300), Color(0xFF09af00)],
);
const kSecondaryColor = Color(0xFF979797);
const kTextColor = Color(0xFF757575);

const kAnimationDuration = Duration(milliseconds: 200);

const headtextstyle = TextStyle(color: Colors.white, fontSize: 20);

Widget buildAppbar() {
  return AppBar(
      backgroundColor: kPrimaryColor,
      title: Text(
        "Hello , John Doe",
        style: GoogleFonts.montserrat(
            textStyle: TextStyle(color: TextIconcolor, fontSize: 22)),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.all(15),
          child: BarberCircularavatar(
            image:
                "https://i.pinimg.com/736x/53/ff/05/53ff0591adc2b77ac000aca68791365a.jpg",
            radius: 25,
          ),
        )
      ]);
}
/* IconButton(
            icon: SvgPicture.asset(
              "assets/icons/notification.svg",
              width: 25,
              color: Colors.white,
            ),
            onPressed: null),
        IconButton(
            icon: SvgPicture.asset(
              "assets/icons/filter.svg",
              width: 20,
              color: Colors.white,
            ),
            onPressed: null),*/

final headstyle = TextStyle(
    color: Colors.black,
    fontSize: getProportionateScreenWidth(28),
    fontWeight: FontWeight.bold,
    height: 1.5);

final salonname = TextStyle(
    color: Colors.black,
    fontSize: 18,
    fontWeight: FontWeight.bold,
    height: 1.5);

final otpInputdecoration = InputDecoration(
    contentPadding:
        EdgeInsets.symmetric(vertical: getProportionateScreenWidth(15)),
    enabledBorder: outlineinputborder(),
    focusedBorder: outlineinputborder(),
    border: outlineinputborder());

OutlineInputBorder outlineinputborder() {
  return OutlineInputBorder(
      borderRadius: BorderRadius.circular(15),
      borderSide: BorderSide(color: Colors.black));
}

final systemoverlay = SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.dark,
    statusBarBrightness:
        Platform.isAndroid ? Brightness.dark : Brightness.light,
    systemNavigationBarColor: Colors.white,
    systemNavigationBarIconBrightness: Brightness.dark,
    systemNavigationBarDividerColor: Colors.black);
