import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  static String tag = 'home-page';

  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    final alucard = Hero(
        tag: 'hero',
        child: const Padding(
          padding: EdgeInsets.all(2),
          child: CircleAvatar(
            radius: 130,
            backgroundColor: Colors.transparent,
            backgroundImage: AssetImage('assets/images/logo-black.png'),
          ),
        ));
    final welcome = const Padding(
      padding: EdgeInsets.all(5),
      child: Text(
        'Welcome',
        style: TextStyle(fontSize: 25, color: Colors.black),
      ),
    );
    final lorem = const Padding(
      padding: EdgeInsets.all(8),
      child: Text(
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
        style: TextStyle(fontSize: 15, color: Colors.black),
      ),
    );
    final body = Container(
      width: MediaQuery.of(context).size.width,// adapts to teh screen that it is being used on
      padding: const EdgeInsets.all(28),
      decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
        Color.fromRGBO(53, 92, 125, 1),
        Color.fromRGBO(108, 91, 123, 1),
        Color.fromRGBO(192, 108, 132, 1)
      ])),
      child: Column(
        children: <Widget>[alucard, welcome, lorem],
      ),
    );
    return Scaffold(
      body: body,
    );
  }
}
