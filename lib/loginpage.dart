import 'package:clean_flutter/home_page.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

class LoginPage extends StatefulWidget {
  static String tag = 'login-page';
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final logo = Hero(
      tag: 'hero',
      child: CircleAvatar(
        backgroundColor: Colors.transparent,
        radius: 100,
        child: Image.asset(
          'assets/images/logo-color.png',
        ),
      ),
    );
    final email = TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      initialValue: 'johndoe@gmail.com',
      decoration: InputDecoration(
          hintText: 'Email',
          contentPadding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(30))),
    );

    final password = TextFormField(
      autofocus: false,
      initialValue: 'secure',
      obscureText: true,
      decoration: InputDecoration(
          hintText: 'Password',
          contentPadding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(30))),
    );

    final loginbutton = Padding(
      padding: EdgeInsets.symmetric(vertical: 16),
      child: Material(
        borderRadius: BorderRadius.circular(100),
        //shadowColor: Colors.amberAccent,
        elevation: 5,
        child: TextButton(
          onPressed: () {
            Navigator.of(context).pushNamed(HomePage.tag);
          },
          // minWidth: 200,
          // height: 42,
          // color: Colors.amberAccent,
          child: const Text(
            'login',
            style: TextStyle(color: Colors.black),
          ),
        ),
      ),
    );

    final forgotlabel = TextButton(
        onPressed: () {
          launchUrlString(
              'https://docs.flutter.dev/cookbook/navigation/navigation-basics');
        },
        child: Text(
          'forget Password',
          style: TextStyle(color: Colors.black),
        ));
//rgba(255, 133, 196, 1)
    return Scaffold(
      backgroundColor: const Color.fromRGBO(255, 213, 234, 1),
      body: Center(
        child: ListView(
          shrinkWrap:
              true, // bascially lets you scroll when the scrren is small and list is small
          padding: EdgeInsets.only(left: 24, right: 24),
          children: <Widget>[
            Container(
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(200))),
                child: logo),
            SizedBox(
              height: 48,
            ),
            email,
            SizedBox(
              height: 48,
            ),
            password,
            SizedBox(
              height: 48,
            ),
            loginbutton,
            forgotlabel
          ],
        ),
      ),
    );
  }
}
