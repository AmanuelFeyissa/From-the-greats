import 'package:flutter/material.dart';
// Package for collection of quotes
import 'package:quotes/quotes.dart';
import 'commonCard.dart';
import 'constants.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  // A function to refresh every time the quote container is clicked
  String refresh() {
    String quotes = Quotes.getRandom().getContent() +
        '\n' +
        '-- ' +
        Quotes.getRandom().getAuthor();
    return quotes;
  }

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
            child: GestureDetector(
              onTap: () {
                setState(() {
                  // Changes the quotes everytime when clicked
                  refresh();
                });
              },
              child: Container(
                child: Center(
                  child: Text(
                    refresh(),
                    style: kDescriptionMultiPageTextStyle,
                  ),
                ),
                margin: const EdgeInsets.all(15.0),
                padding: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Color(0xFF584389),
                ),
              ),
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
                          onPressed: () {
                            Navigator.pushNamed(context, '/one');
                          },
                          color: kPictureBackgroundColor,
                          image: Image.asset('images/nikolaTesla.png'),
                        ),
                      ),
                      Expanded(
                        child: CommonCard(
                          onPressed: () {
                            Navigator.pushNamed(context, '/two');
                          },
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
                          onPressed: () {
                            Navigator.pushNamed(context, '/three');
                          },
                          color: kPictureBackgroundColor,
                          image: Image.asset('images/nelsonMandela.png'),
                        ),
                      ),
                      Expanded(
                        child: CommonCard(
                          onPressed: () {
                            Navigator.pushNamed(context, '/four');
                          },
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
