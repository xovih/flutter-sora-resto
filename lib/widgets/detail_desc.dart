import 'package:flutter/material.dart';

class RestoDetailDescWidget extends StatelessWidget {
  RestoDetailDescWidget({this.lead, this.child});

  final Widget lead;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        lead,
        Padding(
          padding: EdgeInsets.only(
            left: 8.0,
            top: 5.0,
            right: 8.0,
          ),
          child: child,
        ),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
