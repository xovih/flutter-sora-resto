import 'package:flutter/material.dart';
import 'package:sora_resto_v1/common/styles.dart';
import 'package:sora_resto_v1/data/models/resto.dart';
import 'package:sora_resto_v1/pages/detail_page.dart';

class RestoData {
  static Widget buildRestoList(BuildContext context, Resto resto) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(
          context,
          DetailPage.routeName,
          arguments: resto,
        );
      },
      child: Container(
        margin: EdgeInsets.all(8.0),
        height: 150.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              offset: Offset(0.0, 0.2),
              blurRadius: 4.0,
            ),
          ],
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 8.0,
          ),
          child: Row(
            children: [
              Expanded(
                flex: 1,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Hero(
                    tag: resto.photo,
                    child: FadeInImage(
                      placeholder: AssetImage('assets/images/no_image.png'),
                      image: NetworkImage(resto.photo),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        resto.restoName,
                        style: kRestoNameStyle,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.location_pin,
                            color: kSecondaryColor,
                            size: 15.0,
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Expanded(
                            child: Text(
                              resto.location,
                              style: kRestoLocStyle,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 12.0,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: kStarColor,
                            size: 15.0,
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Expanded(
                            child: Text(resto.rating),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
