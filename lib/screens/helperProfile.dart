import 'dart:ui';
import 'package:safecampus/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:safecampus/hamburguesita.dart';

class HelperProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Hamburguesita(),
        appBar: AppBar(
            backgroundColor: kPrimaryColor,
            title: Text(
              'Perfil de ayudante',
              style: GoogleFonts.montserrat(
                color: kTitulos,
                fontWeight: FontWeight.w500,
              ),
            )),
        body: new ListView(
          children: <Widget>[
            new Padding(
                padding: const EdgeInsets.all(15.0),
                child: new Text('Evalua a tu ayudante',
                    textAlign: TextAlign.center,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20))),
            SizedBox(
              height: 20,
            ),
            Row(
              children: <Widget>[
                Expanded(
                    child: CircleAvatar(
                  maxRadius: 50.0,
                  child: FlutterLogo(size: 30.0),
                  backgroundColor: kPrimaryColor,
                )),
                Expanded(
                    child: Text("Nombre ayudante",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20)))
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Column(
              children: <Widget>[
                Center(
                  child: Text(
                    "¿Fue de ayuda?",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: <Widget>[
                Expanded(
                    child: RaisedButton(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                        padding: EdgeInsets.all(20),
                        child: Text(
                          'Si',
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                        onPressed: () {})),
                Expanded(
                    child: RaisedButton(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                        padding: EdgeInsets.all(20),
                        child: Text(
                          'No',
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                        onPressed: () {}))
              ],
            ),
            SizedBox(
              height: 80,
            ),
            Column(
              children: <Widget>[
                Text(
                  "Comentarios: ",
                  style: TextStyle(fontSize: 16),
                ),
                TextField(
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(vertical: 20),
                      hintText: "Comentarios",
                      fillColor: Colors.white),
                )
              ],
            ),
            SizedBox(
              height: 50,
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
                      'Enviar evaluación',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    onPressed: () {})
              ],
            )
          ],
        ));
  }
}
