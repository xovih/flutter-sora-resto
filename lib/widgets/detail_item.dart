import 'package:flutter/material.dart';
import 'package:sora_resto_v1/common/styles.dart';

class RestoDetailItem extends StatelessWidget {
  RestoDetailItem(this.label);

  final String label;

  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      style: kDetailHeader,
    );
  }
}
