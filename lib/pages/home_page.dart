import 'package:flutter/material.dart';
import 'package:sora_resto_v1/common/styles.dart';
import 'package:sora_resto_v1/data/models/resto.dart';
import 'package:sora_resto_v1/data/resto_data.dart';

class HomePage extends StatelessWidget {
  static const routeName = '/home';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              flex: 1,
              child: Container(
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        'Malang Culinary',
                        style: kAppTitleTextStyle,
                      ),
                      SizedBox(
                        height: 4.0,
                      ),
                      Text(
                        'Recomendation Resto For You',
                        style: kSloganTextStyle,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: FutureBuilder<String>(
                future: DefaultAssetBundle.of(context)
                    .loadString('assets/resto.json'),
                builder: (context, snapshot) {
                  final List<Resto> resto = parseResto(snapshot.data);
                  return ListView.builder(
                    itemCount: resto.length,
                    itemBuilder: (context, index) {
                      return RestoData.buildRestoList(context, resto[index]);
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
