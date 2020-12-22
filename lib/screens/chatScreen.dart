import 'dart:ui';
import 'package:safecampus/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:safecampus/hamburguesita.dart';

class ChatScreen extends StatelessWidget {
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
            new Padding(
                padding: const EdgeInsets.all(15.0),
                child: new Text('Chats recientes',
                    textAlign: TextAlign.center,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20))),
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
            SizedBox(
              height: 20,
            ),
            InkWell(
              child: Row(
                children: <Widget>[
                  Container(
                      padding: EdgeInsets.all(20),
                      child: CircleAvatar(
                        maxRadius: 30.0,
                        child: FlutterLogo(size: 10.0),
                        backgroundColor: kNocturno,
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
            SizedBox(
              height: 20,
            ),
            InkWell(
              child: Row(
                children: <Widget>[
                  Container(
                      padding: EdgeInsets.all(20),
                      child: CircleAvatar(
                        maxRadius: 30.0,
                        child: FlutterLogo(size: 10.0),
                        backgroundColor: kContraste2,
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
            SizedBox(
              height: 20,
            ),
            InkWell(
              child: Row(
                children: <Widget>[
                  Container(
                      padding: EdgeInsets.all(20),
                      child: CircleAvatar(
                        maxRadius: 30.0,
                        child: FlutterLogo(size: 10.0),
                        backgroundColor: kContraste1,
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
            SizedBox(
              height: 20,
            ),
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
            SizedBox(
              height: 20,
            ),
          ],
        ));
  }
}
