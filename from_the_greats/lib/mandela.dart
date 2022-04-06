import 'package:flutter/material.dart';
import 'commonCard.dart';
import 'constants.dart';

class Mandela extends StatelessWidget {
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
                    child: Text('Nelson Mandela',
                        style: kHeaderMultiPageTextStyle),
                    margin: const EdgeInsets.all(15.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
                CommonCard(
                  color: kPictureBackgroundColor,
                  image: Image.asset('images/nelsonMandela.png'),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
                child: Text(
                  'Description \n \n $mandelaDescription',
                  style: kDescriptionMultiPageTextStyle,
                ),
                margin: const EdgeInsets.all(15.0),
                padding: const EdgeInsets.all(10.0),
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
