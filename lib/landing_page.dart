import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  String desc =
      "Desktop Application Developer | Web Developer | Flutter Developer | Android Developer";

  _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
              gradient: LinearGradient(
            colors: [Color.fromARGB(255, 1, 27, 49), Color.fromARGB(255, 13, 37, 70)],
          )),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    child: Image.asset("assets/profilepic.jpeg",
                        height: 200, width: 200)),
              ),
              SizedBox(
                height: 12,
              ),
              Text(
                "Muzamil Khan",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 50),
                child: Text(
                  desc,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 13,
                      color: Colors.white,
                      fontWeight: FontWeight.w300),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 50),
                child: Column(
                  children: [
                    Text(
                      "Skills",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold),
                    ),
                    Container(
                        child: Row(
                      children: <Widget>[
                        Image.asset("assets/flutter software.png",
                            height: 50, width: 50),
                        Text(
                          "Flutter | Dart",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 13,
                              fontWeight: FontWeight.w300),
                        ),
                      ],
                    )),
                    Container(
                        child: Row(
                      children: <Widget>[
                        Image.asset("assets/android.png",
                            height: 50, width: 50),
                        Text(
                          "Android | Java | XML",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 13,
                              fontWeight: FontWeight.w300),
                        ),
                      ],
                    )),
                    Container(
                        child: Row(
                      children: <Widget>[
                        Image.asset("assets/database.png",
                            height: 50, width: 50),
                        Text(
                          """MySQL | MSSQL | MS ACCESS 
                          |
                               MongoDB | Firebase""",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 13,
                              fontWeight: FontWeight.w300),
                        ),
                      ],
                    )),
                    Container(
                        child: Row(
                      children: <Widget>[
                        Image.asset("assets/web.png", height: 50, width: 50),
                        Text(
                          "HTML| CSS | BootStrap",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 13,
                              fontWeight: FontWeight.w300),
                        ),
                      ],
                    )),
                    Container(
                        child: Row(
                      children: <Widget>[
                        Image.asset("assets/python.png", height: 50, width: 50),
                        Text(
                          "Python | Django | Flask",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 13,
                              fontWeight: FontWeight.w300),
                        ),
                      ],
                    )),
                    Container(
                        child: Row(
                      children: <Widget>[
                        Image.asset("assets/c sharp.png",
                            height: 50, width: 50),
                        Text(
                          "C# | WinForms",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 13,
                              fontWeight: FontWeight.w300),
                        ),
                      ],
                    )),
                    Container(
                        child: Row(
                      children: <Widget>[
                        Image.asset("assets/javascript.png",
                            height: 50, width: 50),
                        Text(
                          "JavaScript | Node.JS | Express.JS",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 13,
                              fontWeight: FontWeight.w300),
                        ),
                      ],
                    )),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 50),
                child: Text(
                  "Projects",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Connect with me",
                style: TextStyle(color: Colors.white, fontSize: 14),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  GestureDetector(
                      onTap: () {
                        _launchURL("https://www.facebook.com/muzamiluet/");
                      },
                      child: Image.asset(
                        "assets/facebook.png",
                        width: 23,
                        height: 23,
                      )),
                  SizedBox(
                    width: 16,
                  ),
                  GestureDetector(
                      onTap: () {
                        _launchURL("https://github.com/MuzamilKhan-WaveIt/");
                      },
                      child: Image.asset(
                        "assets/github.png",
                        width: 23,
                        height: 23,
                      )),
                  SizedBox(
                    width: 16,
                  ),
                  GestureDetector(
                      onTap: () {
                        _launchURL(
                            "https://www.linkedin.com/in/muzamil-khan-38b144186/");
                      },
                      child: Image.asset(
                        "assets/linkedin.png",
                        width: 23,
                        height: 23,
                      )),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              GestureDetector(
                onTap: () {
                  _launchURL(
                      "https://www.canva.com/design/DAE76jk-xu0/_TAylgKPgMheed4iJ9hdnQ/view?utm_content=DAE76jk-xu0&utm_campaign=designshare&utm_medium=link2&utm_source=sharebutton");
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                        gradient: LinearGradient(colors: [
                          const Color(0xffA2834D),
                          const Color(0xffBC9A5F)
                        ])),
                    child: Text(
                      "My Resume",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
