import 'dart:io' show Platform;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sora_resto_v1/common/styles.dart';
import 'package:sora_resto_v1/widgets/roundedicon_button.dart';

class ButtonBack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RoundedIconButton(
      icon: Icon(
        Platform.isIOS ? CupertinoIcons.chevron_back : Icons.arrow_back,
        color: kSecondaryColor,
      ),
      color: kPrimaryColor,
      onPress: () {
        Navigator.pop(context);
      },
    );
  }
}
