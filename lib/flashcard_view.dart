import 'package:flutter/material.dart';

class FlashcardView extends StatelessWidget {
  final String text;
  final String title;
  FlashcardView({Key? key, required this.title, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child: Column(
        children: [
          ListTile(
            leading: Icon(
              Icons.question_answer_sharp,
              size: 30.0,
            ),
            title: Text(
              title,
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            tileColor:
                (title == 'Answer') ? Colors.greenAccent[400] : Colors.red,
            // tileColor: Colors.blue[300],
          ),
          Center(
            child: Padding(
              padding: EdgeInsets.all(15.0),
              child: Text(
                text,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
