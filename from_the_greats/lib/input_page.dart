import 'package:flutter/material.dart';

const kPictureBackgroundColor = Color(0xFF1D1E33);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('From The Greats'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: CommonCard(
              color: Color(0xFF584389),
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Expanded(
                        child: CommonCard(
                          color: kPictureBackgroundColor,
                          image: Image.asset('images/nikolaTesla.png'),
                        ),
                      ),
                      Expanded(
                        child: CommonCard(
                          color: kPictureBackgroundColor,
                          image: Image.asset('images/albertEinstein.png'),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Expanded(
                        child: CommonCard(
                          color: kPictureBackgroundColor,
                          image: Image.asset('images/nelsonMandela.png'),
                        ),
                      ),
                      Expanded(
                        child: CommonCard(
                          color: kPictureBackgroundColor,
                          image: Image.asset('images/bobMarley.png'),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CommonCard extends StatelessWidget {
  late Color? color;
  late Image? image;

  CommonCard({@required this.color, this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15.0),
      child: image,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: color,
      ),
    );
  }
}
