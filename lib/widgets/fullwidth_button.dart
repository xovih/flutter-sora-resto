import 'package:flutter/material.dart';
import 'package:sora_resto_v1/common/styles.dart';

class FullwidthButton extends StatelessWidget {
  FullwidthButton({this.onPress});

  final Function onPress;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: Center(
          child: Text(
            'BACK',
            style: kButtontextStyle,
          ),
        ),
        width: double.infinity,
        height: 50.0,
        decoration: BoxDecoration(
          color: kSecondaryColor,
          borderRadius: BorderRadius.circular(8.0),
        ),
      ),
    );
  }
}
