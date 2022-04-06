import 'package:flutter/material.dart';
import 'commonCard.dart';
import 'constants.dart';

class Bob extends StatelessWidget {
  const Bob({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('From the Greats'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    child: Text('Bob Marley', style: headerMultiPageTextStyle),
                    margin: const EdgeInsets.all(15.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
                CommonCard(
                  color: kPictureBackgroundColor,
                  image: Image.asset('images/bobMarley.png'),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
                child: Text(
                  'Description \n \n Hello',
                  style: descriptionMultiPageTextStyle,
                ),
                margin: const EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: kPictureBackgroundColor,
                )),
          ),
        ],
      ),
    );
  }
}
