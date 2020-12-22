import 'dart:ui';
import 'package:safecampus/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:safecampus/hamburguesita.dart';
import 'package:safecampus/screens/aboutUs.dart';

class pedirAyuda extends StatefulWidget{
  @override
  _pedirAyudaState createState() => _pedirAyudaState();
}

class _pedirAyudaState extends State<pedirAyuda>{
  bool esAnonima = false;
  @override
  Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: kContraste1,
        drawer: Hamburguesita(),
        appBar: AppBar(
            backgroundColor: kPrimaryColor,
            title: Text(
              'Pedir Ayuda',
              style: GoogleFonts.montserrat(
                color: kTitulos,
                fontWeight: FontWeight.w500,
                  fontSize: 25
              ),
            )
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                SizedBox(height: 30),
                Text(
                  'Describe brévemente tu caso: ',
                  style: GoogleFonts.montserrat(
                    color: kContraste2,
                    fontWeight: FontWeight.w500,
                    fontSize: 20
                  ),
                ),
                SizedBox(height: 25,),
                TextField(
                  maxLines: 10,
                  decoration: InputDecoration(
                    border: OutlineInputBorder()
                  ),
                ),
                SwitchListTile(
                  title: Text('Anónima',
                  style: GoogleFonts.montserrat(color: kTitulos),),
                    value: esAnonima,
                    onChanged: (value){
                      setState(() {
                        esAnonima = value;
                        print(esAnonima);
                      });
                    }
                ),
                RaisedButton(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                    padding: EdgeInsets.all(20),
                    child: Text(
                      'Enviar',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder:
                                  (context) {
                                return aboutUs();
                              }
                          )
                      );
                    }
                )
              ],
            ),
          ),
        ),
      );
  }
}