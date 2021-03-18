import 'dart:io' show Platform;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sora_resto_v1/common/styles.dart';
import 'package:sora_resto_v1/widgets/roundedicon_button.dart';

class LoveButton extends StatefulWidget {
  @override
  _LoveButtonState createState() => _LoveButtonState();
}

class _LoveButtonState extends State<LoveButton> {
  bool isFav = false;
  Map<bool, String> title = {false: 'Oops..', true: 'Yeay..'};
  Map<bool, String> notif = {
    false: 'Jadi anda tidak jadi suka resto ini.',
    true: 'Saya setuju dengan anda, resto ini memang baik.'
  };

  @override
  Widget build(BuildContext context) {
    return RoundedIconButton(
      icon: Icon(
        isFav ? Icons.favorite : Icons.favorite_border,
        color: kSecondaryColor,
      ),
      color: kPrimaryColor,
      onPress: () {
        setState(() {
          isFav = !isFav;
          Platform.isIOS
              ? showCupertinoDialog(
                  context: context,
                  barrierDismissible: true,
                  builder: (context) {
                    return CupertinoAlertDialog(
                      title: Text(title[isFav]),
                      content: Text(notif[isFav]),
                      actions: [
                        CupertinoDialogAction(
                          child: Text('Ok'),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                      ],
                    );
                  },
                )
              : showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text(title[isFav]),
                      content: Text(notif[isFav]),
                      actions: [
                        FlatButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text('Ok'),
                        ),
                      ],
                    );
                  },
                );
        });
      },
    );
  }
}
