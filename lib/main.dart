import 'package:flutter/material.dart';
import 'package:sora_resto_v1/common/styles.dart';
import 'package:sora_resto_v1/pages/detail_page.dart';
import 'package:sora_resto_v1/pages/home_page.dart';

void main() => runApp(SoraResto());

class SoraResto extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kuliner Kota Malang',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        accentColor: kSecondaryColor,
        textTheme: myTextTheme,
        appBarTheme: AppBarTheme(
          textTheme: myTextTheme.apply(bodyColor: Colors.black),
          elevation: 0,
        ),
        buttonTheme: ButtonThemeData(
          buttonColor: kSecondaryColor,
          textTheme: ButtonTextTheme.primary,
        ),
      ),
      initialRoute: HomePage.routeName,
      routes: {
        HomePage.routeName: (context) => HomePage(),
        DetailPage.routeName: (context) => DetailPage(
              resto: ModalRoute.of(context).settings.arguments,
            ),
      },
    );
  }
}
