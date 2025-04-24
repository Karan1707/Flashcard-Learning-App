import 'package:flutter/material.dart';

class AboutUsPage extends StatelessWidget {
  const AboutUsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About Us'),
        centerTitle: true,
        backgroundColor: Colors.pink,
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            CircleAvatar(
              radius: 100.0,
              backgroundImage: AssetImage('assets/images/karan.jpg'),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Karan Thakkar',
              style: TextStyle(
                  fontSize: 30.0,
                  color: Colors.black,
                  fontFamily: 'Lobster',
                  letterSpacing: 3),
            ),
            // Text(
            //   'Flutter Developer',
            //   style: TextStyle(
            //       fontSize: 20.0, color: Colors.black, letterSpacing: 3),
            // ),
            SizedBox(
              height: 10,
            ),
            Column(
              children: [
                Container(
                  color: Colors.black,
                  margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25),
                  child: ListTile(
                    leading: Icon(
                      Icons.mail_outline_rounded,
                      color: Colors.redAccent,
                      size: 24.0,
                    ),
                    title: Text(
                      'karanthakkar1707@gmail.com',
                      style:
                          TextStyle(color: Colors.amberAccent, fontSize: 20.0),
                    ),
                  ),
                ),
                Container(
                  color: Colors.black,
                  margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25),
                  child: ListTile(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    leading: Icon(
                      Icons.phone_sharp,
                      color: Colors.redAccent,
                      size: 24.0,
                    ),
                    title: Text(
                      '+91 9313871427',
                      style:
                          TextStyle(color: Colors.amberAccent, fontSize: 20.0),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
