import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'home_screen.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final String appTitle = "Mi aplicacion 2";

  int contador = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(appTitle),
        centerTitle: false,
        actions: [
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {},
          ),
        ],
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
              // gradient: LinearGradient(
              //   // begin: Alignment.topCenter,
              //   // end: Alignment.bottomCenter,
              //   colors: <Color>[
              //     Colors.purple,
              //     Colors.purple[50],
              //     Colors.yellow,
              //     Colors.green,
              //   ],
              // ),
              ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text('Hola $contador', style: GoogleFonts.lato()),
              SizedBox(
                height: 16,
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    contador = contador + 2;
                  });
                },
                splashColor: Colors.red,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      // begin: Alignment.topCenter,
                      // end: Alignment.bottomCenter,
                      colors: <Color>[
                        Colors.purple,
                        Colors.purple[50],
                        Colors.yellow,
                        Colors.green,
                      ],
                    ),
                  ),
                  child: Text(
                    'Sumar +2',
                    style: Theme.of(context).textTheme.subtitle,
                  ),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              RaisedButton(
                elevation: 5,
                color: Colors.orange,
                onPressed: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (BuildContext context) {
                        return HomeScreen();
                      },
                    ),
                  );
                },
                child: Text('Login'),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          setState(() {
            contador = contador + 1;
          });
        },
      ),
    );
  }
}
