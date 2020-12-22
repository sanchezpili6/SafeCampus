import 'dart:ui';
import 'package:safecampus/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:safecampus/hamburguesita.dart';

class ChatMessages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Hamburguesita(),
        appBar: AppBar(
            backgroundColor: kPrimaryColor,
            title: Text(
              'Chat',
              style: GoogleFonts.montserrat(
                color: kTitulos,
                fontWeight: FontWeight.w500,
              ),
            )),
        body: new ListView(
          children: <Widget>[
            InkWell(
              child: Row(
                children: <Widget>[
                  Container(
                      padding: EdgeInsets.all(20),
                      child: CircleAvatar(
                        maxRadius: 30.0,
                        child: FlutterLogo(size: 10.0),
                        backgroundColor: kPrimaryColor,
                      )),
                  Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Remitente",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Mensaje',
                          style: TextStyle(color: Colors.black, fontSize: 14.0),
                        ),
                      ]),
                ],
              ),
              onTap: () {
                print("Renglon !");
              },
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 8, left: 20, right: 20, bottom: 32),
                child: Container(
                  height: 450,
                  decoration: BoxDecoration(
                    border: Border.all(color: kContraste2),
                  ),
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(left:20.0, right: 20),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder()
                  ),
                ),
              ),
            )

          ],
        ));
  }
}
