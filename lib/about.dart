import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AboutScreen extends StatefulWidget {
  @override
  _AboutScreenState createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        title: Text('About Me'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                radius: 60.0,
                backgroundImage: AssetImage('images/nader.jpg'),
              )
            ),

            Divider(
              color: Colors.grey,
              height: 60.0,
            ),

            Text(
              'Name',
              style: TextStyle(
                letterSpacing: 2.0,
                fontSize: 20,
                color: Colors.green,
              ),
            ),

            SizedBox(height: 10.0),

            Text(
              'Nader Mohamed Musa',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 28.0,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 30.0),
            Text(
              'Email',
              style: TextStyle(
                letterSpacing: 2.0,
                color: Colors.cyanAccent,
              ),
            ),

            SizedBox(height: 10.0),

            Text(
              'nm1697@fayoum.edu.eg',
              style: TextStyle(
                color: Colors.deepPurple,
                fontWeight: FontWeight.bold,
                fontSize: 23.0,
                letterSpacing: 2.0,
              ),
            ),

            Text(
              'nm01123578062@gmail.com',
              style: TextStyle(
                color: Colors.deepOrange,
                fontWeight: FontWeight.bold,
                fontSize: 23.0,
                letterSpacing: 2.0,
              ),
            ),

            SizedBox(height: 30.0),

            Text(
              'My accounts',
              style: TextStyle(
                letterSpacing: 2.0,
                color: Colors.deepPurple,
              ),
            ),

            SizedBox(height: 10.0),

            Center(
              child: Wrap(
                alignment: WrapAlignment.spaceEvenly,
                spacing: 30.0,
                children: <Widget>[

                  IconButton(
                    color: Colors.lightBlue,
                    icon: FaIcon(FontAwesomeIcons.facebook),
                    onPressed: () {
                      setState(() {
                        _launchURL('https://www.facebook.com/profile.php?id=100022457679462');
                      });
                    },
                  ),
                  // instagram
                  IconButton(
                    color: Colors.red ,
                    icon: FaIcon(FontAwesomeIcons.instagram),
                    onPressed: () {
                      setState(() {
                        _launchURL('https://www.instagram.com/nader_mohamed233/');
                      });
                    },
                  ),
                  // twitter
                  IconButton(
                    color: Colors.lightBlueAccent,
                    icon: FaIcon(FontAwesomeIcons.twitter),
                    onPressed: () {
                      setState(() {
                        _launchURL('https://twitter.com/Nader_mohamed98');
                      });
                    }
                  ),

                  // github
                  IconButton(
                    color: Colors.black,
                    icon: FaIcon(FontAwesomeIcons.github),
                    onPressed: () {
                      setState(() {
                        _launchURL('https://github.com/NaderMohamedMusa');
                      });
                    },
                  ),
                ],
              ),
            ),

            Center(
              child: Wrap(
                alignment: WrapAlignment.spaceEvenly,
                spacing: 50.0,
                children: <Widget>[

                  IconButton(
                    color: Colors.blue,
                    icon: FaIcon(FontAwesomeIcons.googlePlay),
                    onPressed: () {
                      setState(() {
                        _launchURL('https://play.google.com/store/apps/developer?id=Nader+Mohamed+Musa');
                      });
                    },
                  ),

                  IconButton(
                    color: Colors.blue,
                    icon: FaIcon(FontAwesomeIcons.linkedin),
                    onPressed: () {
                      setState(() {
                        _launchURL('https://www.linkedin.com/in/nader-mohamed-560133186/');
                      });
                    },
                  ),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Function that launches an URL
  _launchURL(String _url) async {
    if (await canLaunch(_url)) {
      await launch(_url);
    } else {
      throw 'Could not launch $_url';
    }
  }

}
