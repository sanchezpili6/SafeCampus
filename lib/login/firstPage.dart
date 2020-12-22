import 'package:flutter/material.dart';
import 'package:safecampus/constants/colors.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          child: LoginPage(),
        ),
      ),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  int _pageState = 0;

  var _backgroundColor = Colors.white;
  var _fontColor = Colors.black;
  var _buttonColor = Color(0xFFFF85A3);
  var _buttonTextColor = Colors.white;

  double _registerBlock = 0;
  double _loginBlock = 0;

  double _registerHeight = 0;
  double _loginHeight = 0;

  double windowWidth = 0;
  double windowHeight = 0;

  @override
  Widget build(BuildContext context) {
    windowWidth = MediaQuery.of(context).size.width;
    windowHeight = MediaQuery.of(context).size.height;

    _registerHeight = windowHeight - 150;
    _loginHeight = windowHeight - 300;

    switch (_pageState) {
      case 0:
        _backgroundColor = Colors.white;
        _buttonColor = Color(0xFFFF85A3);
        _buttonTextColor = Colors.white;
        _fontColor = Colors.black;

        _registerBlock = windowHeight;
        _loginBlock = windowHeight;
        break;
      case 1:
        _backgroundColor = Colors.white;
        _buttonColor = Colors.white;
        _buttonTextColor = Color(0xFFFF85A3);
        _fontColor = Colors.black;

        _registerBlock = 150;
        _loginBlock = windowHeight;
        break;

      case 2:
        _backgroundColor = Colors.white;
        _buttonColor = Colors.white;
        _buttonTextColor = Color(0xFFFF85A3);
        _fontColor = Colors.black;

        _registerBlock = 3000;
        _loginBlock = 270;
        break;
    }

    return SingleChildScrollView(
      child: Stack(
        children: <Widget>[
          AnimatedContainer(
            curve: Curves.fastLinearToSlowEaseIn,
            duration: Duration(milliseconds: 300),
            color: _backgroundColor,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _pageState = 0;
                    });
                  },
                  child: Container(
                      child: Column(
                    children: <Widget>[
                      Container(
                        margin: const EdgeInsets.only(top: 100),
                      ),
                      Container(
                        child: Text(
                          "SafeCampus",
                          style: TextStyle(fontSize: 30, color: _fontColor),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 20),
                        child: Text(
                          "Encuentra la ayuda que necesitas en este momento",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 20, color: _fontColor),
                        ),
                      )
                    ],
                  )),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 32),
                  child: Center(
                      child: Image.asset("assets/images/Safecampus.png")),
                ),
                Container(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        if (_pageState != 0) {
                          _pageState = 0;
                        } else {
                          _pageState = 1;
                        }
                      });
                    },
                    child: Container(
                        margin: EdgeInsets.all(32),
                        padding: EdgeInsets.all(20),
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: _buttonColor,
                            borderRadius: BorderRadius.circular((50))),
                        child: Center(
                          child: Text(
                            "Registrate",
                            style: TextStyle(
                                color: _buttonTextColor, fontSize: 20),
                          ),
                        )),
                  ),
                ),
                Container(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        _pageState = 2;
                      });
                    },
                    child: Container(
                        margin: EdgeInsets.all(32),
                        padding: EdgeInsets.all(20),
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: _buttonColor,
                            borderRadius: BorderRadius.circular((50))),
                        child: Center(
                          child: Text(
                            "Inicia Sesión",
                            style: TextStyle(
                                color: _buttonTextColor, fontSize: 20),
                          ),
                        )),
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                _pageState = 0;
              });
            },
            child: AnimatedContainer(
              height: _registerHeight,
              padding: EdgeInsets.all(20),
              curve: Curves.fastLinearToSlowEaseIn,
              duration: Duration(milliseconds: 3000),
              transform: Matrix4.translationValues(0, _registerBlock, 1),
              decoration: BoxDecoration(
                  color: Color(0xFFFF85A3),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(bottom: 20),
                        child: Text(
                          "Registrate en nuestra plataforma",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      InputField(
                        icon: Icons.email,
                        hint: "Correo Institucional",
                        password: false,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      InputField(
                        icon: Icons.account_circle,
                        hint: "Nombre",
                        password: false,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      InputField(
                        icon: Icons.mode_edit,
                        hint: "Escuela",
                        password: false,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      InputField(
                        icon: Icons.home,
                        hint: "Campus",
                        password: false,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      InputField(
                        icon: Icons.security,
                        hint: "Contraseña",
                        password: true,
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[PrimaryButton(btnText: "Registrate")],
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                _pageState = 0;
              });
            },
            child: AnimatedContainer(
              height: _loginHeight,
              padding: EdgeInsets.all(32),
              curve: Curves.fastLinearToSlowEaseIn,
              duration: Duration(milliseconds: 3000),
              transform: Matrix4.translationValues(0, _loginBlock, 1),
              decoration: BoxDecoration(
                  color: Color(0xFFA1D9F7),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(bottom: 20),
                      child: Text(
                        "Inicia sesión en nuestra plataforma",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                    InputField(
                      icon: Icons.email,
                      hint: "Correo",
                      password: false,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    InputField(
                      icon: Icons.contact_page,
                      hint: "Contraseña",
                      password: true,
                    ),
                  ]),
                  Column(
                    children: <Widget>[PrimaryButton(btnText: "Inicia Sesión")],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class PrimaryButton extends StatefulWidget {
  final String btnText;
  PrimaryButton({this.btnText});

  @override
  _PrimaryButtonState createState() => _PrimaryButtonState();
}

class _PrimaryButtonState extends State<PrimaryButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(50)),
      padding: EdgeInsets.all(20),
      child: Center(
        child: Text(
          widget.btnText,
          style: TextStyle(
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}

class InputField extends StatefulWidget {
  final IconData icon;
  final String hint;
  final bool password;
  InputField({this.icon, this.hint, this.password});

  @override
  _InputFieldState createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: Colors.white, width: 2),
          borderRadius: BorderRadius.circular(50)),
      child: Row(
        children: <Widget>[
          Container(
              width: 70,
              child: Icon(
                widget.icon,
                size: 25,
                color: Colors.white,
              )),
          Expanded(
              child: TextField(
            decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(vertical: 20),
                border: InputBorder.none,
                hintText: widget.hint,
                fillColor: Colors.white),
            obscureText: widget.password,
          ))
        ],
      ),
    );
  }
}
