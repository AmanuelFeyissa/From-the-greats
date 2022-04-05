import 'package:flutter/material.dart';
import 'commonCard.dart';
import 'constants.dart';

class Tesla extends StatelessWidget {
  const Tesla({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('From the Greats'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: CommonCard(
                    color: kPictureBackgroundColor,
                  ),
                ),
                Expanded(
                  child: CommonCard(
                    color: kPictureBackgroundColor,
                    image: Image.asset('images/nikolaTesla.png'),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 3,
            child: CommonCard(color: kPictureBackgroundColor),
          ),
        ],
      ),
    );
  }
}
