import 'package:flutter/material.dart';
import './UI/custominput_field.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new LoginPage(),
      theme: new ThemeData(primarySwatch: Colors.blue),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  State createState() => new LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.black,
      body: new Stack(
        fit: StackFit.expand,
        children: <Widget>[
          new Image(
            image: new AssetImage("assets/images/fond.png"),
            fit: BoxFit.cover,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Flexible(
                flex: 4,
                child: Text(
                  'Inicio de Sesión',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
              ),
              Stack(
                children: [
                  Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                          const BorderRadius.all(const Radius.circular(15)),
                    ),
                    margin: const EdgeInsets.only(left: 15.0, right: 15.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Padding(padding: EdgeInsets.all(90.0)),
                        CustomInputField(new Icon(Icons.person), "Usuario"),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                        ),
                        CustomInputField(new Icon(Icons.lock), "Contraseña"),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                        ),
                        new SizedBox(
                          width: 150.0,
                          height: 40.0,
                          child: RaisedButton(
                            onPressed: () {},
                            color: Colors.deepOrange,
                            textColor: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15.0))),
                            child: Text(
                              'Iniciar',
                              style: TextStyle(fontSize: 18.0),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                    child: Image.asset("assets/images/plato2.png"),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                new SizedBox(
                  width: 150.0,
                  height: 40.0,
                  child: RaisedButton(
                    onPressed: () {},
                    color: Colors.deepOrange,
                    textColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15.0))),
                    child: Text(
                      'Iniciar Sesión',
                      style: TextStyle(
                          fontSize: 18.0, fontWeight: FontWeight.normal),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                ),
                new SizedBox(
                  width: 150.0,
                  height: 40.0,
                  child: RaisedButton(
                    onPressed: () {},
                    color: Colors.white,
                    textColor: Colors.purple,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15.0))),
                    child: Text(
                      'Registrarse',
                      style: TextStyle(
                          fontSize: 18.0, fontWeight: FontWeight.normal),
                    ),
                  ),
                ),
              ]),
            ],
          ),
        ],
      ),
    );
  }
}
