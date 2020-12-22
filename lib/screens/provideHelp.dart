import 'dart:ui';
import 'package:safecampus/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:safecampus/hamburguesita.dart';

class ProvideHelp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Hamburguesita(),
        appBar: AppBar(
            backgroundColor: kPrimaryColor,
            title: Text(
              'Ofrecer ayuda',
              style: GoogleFonts.montserrat(
                color: kTitulos,
                fontWeight: FontWeight.w500,
              ),
            )),
        body: new ListView(
          children: <Widget>[
            new Padding(
                padding: const EdgeInsets.all(15.0),
                child: new Text('Deseo ayudar ',
                    textAlign: TextAlign.center,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20))),
            SizedBox(
              height: 20,
            ),
            Column(
              children: <Widget>[
                Text(
                  "Favor de contestar las siguientes preguntas",
                  style: TextStyle(fontSize: 16),
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Column(
              children: <Widget>[
                Container(
                    child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    "¿Por qué quieres pertenecer a la comunidad de networking como apoyo a otras personas?",
                    style: TextStyle(fontSize: 16),
                  ),
                )),
                InputField()
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              children: <Widget>[
                Container(
                    child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    "¿Por qué crees que es importante que haya un espacio seguro, sororo y de confianza en donde las mujeres puedan levantar su voz y ser acompañadas?",
                    style: TextStyle(fontSize: 16),
                  ),
                )),
                InputField()
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              children: <Widget>[
                Container(
                    child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    "¿Tienes alguna experiencia previa siendo apoyo positivo para otras en momentos difíciles?",
                    style: TextStyle(fontSize: 16),
                  ),
                )),
                InputField()
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              children: <Widget>[
                Container(
                    child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    "¿Qué puedes aportar a la comunidad de safecampus?",
                    style: TextStyle(fontSize: 16),
                  ),
                )),
                InputField()
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              children: <Widget>[
                RaisedButton(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                    padding: EdgeInsets.all(20),
                    child: Text(
                      'Enviar respuestas',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    onPressed: () {})
              ],
            ),
          ],
        ));
  }
}

class InputField extends StatefulWidget {
  final String labelField;

  InputField({this.labelField});

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
            width: 20,
          ),
          Expanded(
              child: TextField(
            decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Respuesta",
                fillColor: Colors.white),
          ))
        ],
      ),
    );
  }
}
