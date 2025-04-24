import 'package:flutter/material.dart';

class TopicTileView extends StatelessWidget {
  final IconData icon;
  final String heading;
  final MaterialColor color;

  const TopicTileView(
      {Key? key,
      required this.icon,
      required this.heading,
      required this.color})
      : super(key: key);

  @override
  Material build(BuildContext context) {
    return Material(
      color: Colors.white,
      elevation: 10.0,
      borderRadius: BorderRadius.circular(20.0),
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(context, "/questions", arguments: this.heading);
        },
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(12.0),
                      child: Text(
                        heading,
                        style: TextStyle(color: color, fontSize: 18.0),
                      ),
                    ),
                    Material(
                      color: color,
                      borderRadius: BorderRadius.circular(24.0),
                      child: Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Icon(
                          icon,
                          color: Colors.white,
                          size: 30.0,
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
