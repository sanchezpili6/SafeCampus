import 'dart:ui';
import 'package:safecampus/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:safecampus/hamburguesita.dart';


class emergencia extends StatefulWidget{
  @override
  _emergenciaState createState() => _emergenciaState();
}

class _emergenciaState extends State<emergencia>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Hamburguesita(),
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: Text(
          'Botón de pánico',
          style: GoogleFonts.montserrat(
              color: kTitulos,
              fontWeight: FontWeight.w500,
              fontSize: 25
          ),
        ),
      ),
      backgroundColor: Colors.redAccent,
      body: Padding(
        padding: EdgeInsets.only(
          bottom: 32
        ),
        child: Stack(
          children: <Widget>[
            Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  ClipOval(
                    child: Material(
                      color: Colors.white, // button color
                      child: InkWell(
                        splashColor: Colors.red, // inkwell color
                        child: SizedBox(width: 200, height: 200, child: Center(
                          child: Text(
                              'PÁNICO',
                              style: GoogleFonts.montserrat(color: Colors.black, fontSize: 30),
                          ),
                        )
                        ),
                        onTap: () {
                          return showAlertDialog(context);
                        },
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

showAlertDialog(BuildContext context) {

  // set up the button
  Widget okButton = FlatButton(
    child: Text("OK"),
    onPressed: () {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder:
                  (context) {
                return emergencia();
              }
          )
      );
    },
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("Emergencia"),
    content: Text("La ayuda viene en camino"),
    actions: [
      okButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}

