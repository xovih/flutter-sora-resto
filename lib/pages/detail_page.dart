import 'package:flutter/material.dart';
import 'package:sora_resto_v1/common/styles.dart';
import 'package:sora_resto_v1/data/models/resto.dart';
import 'package:sora_resto_v1/widgets/back_button.dart';
import 'package:sora_resto_v1/widgets/detail_desc.dart';
import 'package:sora_resto_v1/widgets/detail_item.dart';
import 'package:sora_resto_v1/widgets/fullwidth_button.dart';
import 'package:sora_resto_v1/widgets/love_button.dart';

class DetailPage extends StatelessWidget {
  static const routeName = '/detail';

  final Resto resto;

  const DetailPage({this.resto});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Stack(
              children: [
                Hero(
                  tag: resto.photo,
                  child: FadeInImage(
                    placeholder: AssetImage('assets/images/no_image.png'),
                    image: NetworkImage(resto.photo),
                  ),
                ),
                SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        ButtonBack(),
                        LoveButton(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  RestoDetailDescWidget(
                    lead: Text(
                      resto.restoName,
                      style: kRestoBigStyle,
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.location_pin,
                          size: 15.0,
                          color: kSecondaryColor,
                        ),
                        Text(
                          resto.location,
                          style: kRestoLocStyle,
                        ),
                      ],
                    ),
                  ),
                  RestoDetailDescWidget(
                    lead: RestoDetailItem('About Resto'),
                    child: Text(
                      resto.description,
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  RestoDetailDescWidget(
                    lead: RestoDetailItem('Menus'),
                    child: Container(
                      height: 150,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: resto.gallery.map((gambar) {
                          return Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Stack(
                                children: [
                                  FadeInImage(
                                    placeholder: AssetImage(
                                        '/assets/images/no_pjoto.png'),
                                    image: NetworkImage(gambar.imgUrl),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          gambar.menuName,
                                          style: kMenuStyle,
                                        ),
                                        Text(
                                          gambar.price,
                                          style: kMenuPriceStyle,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                  ),
                  SizedBox(height: 10.0),
                  FullwidthButton(
                    onPress: () {
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
