import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const Color kPrimaryColor = Color(0xFFFBFAFF);
const Color kSecondaryColor = Color(0xFFEE2A2B);
const Color kStarColor = Color(0xFFfcba03);

const kAppTitleTextStyle = TextStyle(
  color: Colors.black,
  fontFamily: 'Pacifico',
  fontSize: 32.0,
);

const kSloganTextStyle = TextStyle(
  color: Colors.black,
  fontFamily: 'Source Sans Pro',
  fontSize: 14.0,
  fontStyle: FontStyle.italic,
);

const kRestoNameStyle = TextStyle(
  fontSize: 16.0,
  fontWeight: FontWeight.bold,
);

const kRestoBigStyle = TextStyle(
  fontSize: 25.0,
  fontWeight: FontWeight.bold,
);

const kDetailHeader = TextStyle(
  fontSize: 18.0,
  fontWeight: FontWeight.bold,
  decoration: TextDecoration.underline,
  decorationColor: kSecondaryColor,
  decorationStyle: TextDecorationStyle.dashed,
);

const kRestoLocStyle = TextStyle(
  fontSize: 13.0,
);

const kButtontextStyle = TextStyle(
  color: Colors.white,
  fontSize: 16.0,
  fontWeight: FontWeight.bold,
  letterSpacing: 1.5,
);

const kMenuStyle = TextStyle(
  fontSize: 12.0,
  color: kPrimaryColor,
  fontWeight: FontWeight.bold,
  shadows: <Shadow>[
    Shadow(
      offset: Offset(2.0, 2.0),
      blurRadius: 3.0,
      color: Colors.black,
    ),
    Shadow(
      offset: Offset(3.0, 3.0),
      blurRadius: 8.0,
      color: Colors.black,
    ),
  ],
);

const kMenuPriceStyle = TextStyle(
  fontSize: 12.0,
  color: kPrimaryColor,
  shadows: <Shadow>[
    Shadow(
      offset: Offset(1.0, 1.0),
      blurRadius: 3.0,
      color: Colors.black,
    ),
    Shadow(
      offset: Offset(1.0, 1.0),
      blurRadius: 8.0,
      color: Colors.black,
    ),
  ],
);

final TextTheme myTextTheme = TextTheme(
  headline1: GoogleFonts.sourceSansPro(
      fontSize: 92, fontWeight: FontWeight.w300, letterSpacing: -1.5),
  headline2: GoogleFonts.sourceSansPro(
      fontSize: 57, fontWeight: FontWeight.w300, letterSpacing: -0.5),
  headline3:
      GoogleFonts.sourceSansPro(fontSize: 46, fontWeight: FontWeight.w400),
  headline4: GoogleFonts.sourceSansPro(
      fontSize: 32, fontWeight: FontWeight.w400, letterSpacing: 0.25),
  headline5:
      GoogleFonts.sourceSansPro(fontSize: 23, fontWeight: FontWeight.w400),
  headline6: GoogleFonts.sourceSansPro(
      fontSize: 19, fontWeight: FontWeight.w500, letterSpacing: 0.15),
  subtitle1: GoogleFonts.sourceSansPro(
      fontSize: 15, fontWeight: FontWeight.w400, letterSpacing: 0.15),
  subtitle2: GoogleFonts.sourceSansPro(
      fontSize: 13, fontWeight: FontWeight.w500, letterSpacing: 0.1),
  bodyText1: GoogleFonts.libreFranklin(
      fontSize: 16, fontWeight: FontWeight.w400, letterSpacing: 0.5),
  bodyText2: GoogleFonts.libreFranklin(
      fontSize: 14, fontWeight: FontWeight.w400, letterSpacing: 0.25),
  button: GoogleFonts.libreFranklin(
      fontSize: 14, fontWeight: FontWeight.w500, letterSpacing: 1.25),
  caption: GoogleFonts.libreFranklin(
      fontSize: 12, fontWeight: FontWeight.w400, letterSpacing: 0.4),
  overline: GoogleFonts.libreFranklin(
      fontSize: 10, fontWeight: FontWeight.w400, letterSpacing: 1.5),
);
