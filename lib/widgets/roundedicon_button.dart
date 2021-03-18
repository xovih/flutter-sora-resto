import 'package:flutter/material.dart';

class RoundedIconButton extends StatelessWidget {
  RoundedIconButton({@required this.onPress, this.color, @required this.icon});

  final Function onPress;
  final Color color;
  final Icon icon;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPress,
      elevation: 0,
      fillColor: color,
      child: icon,
      padding: EdgeInsets.all(8.0),
      shape: CircleBorder(),
    );
  }
}
