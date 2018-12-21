import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color.fromARGB(255, 248, 39, 39),
      ),
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          alignment: Alignment.center,
          children: <Widget>[
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 2.2,
              color: Color.fromARGB(232, 248, 39, 39),
              child: Stack(
                alignment: Alignment.center,
                children: <Widget>[
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Image.asset(
                      'img/background-pattern.png',
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                  Image(
                    image: AssetImage('img/app-name.png'),
                    width: 250,
                  )
                ],
              )),
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.white,
              padding: EdgeInsets.only(left: 30, right: 30, top: 10),
              child: SingleChildScrollView(
                child: Column(children: <Widget>[
                  TextFormField(
                      decoration: InputDecoration(
                    labelText: 'Usuario',
                  )),
                  TextFormField(
                      decoration: InputDecoration(
                    labelText: 'Contraseña',
                  )),
                  Container(
                    padding: EdgeInsets.only(top: 20),
                    child: MaterialButton(
                      minWidth: MediaQuery.of(context).size.width,
                      color: Color.fromARGB(255, 248, 39, 39),
                      textColor: Colors.white,
                      child: new Text("INICIAR SESIÓN"),
                      onPressed: () {},
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text('o', style: TextStyle(color: Colors.grey)),
                      ],
                    ),
                  ),
                  Container(
                    child: MaterialButton(
                      minWidth: MediaQuery.of(context).size.width,
                      color: Color.fromARGB(255, 58, 82, 152),
                      textColor: Colors.white,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                              padding: EdgeInsets.only(right: 10),
                              child: Icon(MdiIcons.facebook)),
                          Text("INICIAR CON FACEBOOK")
                        ],
                      ),
                      onPressed: () {},
                    ),
                  ),
                  
                  Container(
                    padding: EdgeInsets.only(top: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text('Olvide mi contraseña', style: TextStyle(
                          color: Color.fromARGB(255, 248, 39, 39)
                        ),),
                         Text('Registrarme', style: TextStyle(
                          color: Color.fromARGB(255, 248, 39, 39),
                        ),),
                      ],
                    ),
                  )
                ]),
              ),
            ),
          ),
        ],
      ),
      Positioned(
        top: MediaQuery.of(context).size.height / 2.35,
        child: Image.asset('img/title-name.png')
        ),
    ]));
  }
}
