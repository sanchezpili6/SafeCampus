import 'dart:ui';
import 'package:safecampus/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:safecampus/hamburguesita.dart';

class pedirAyuda extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
      return Scaffold(
        drawer: Hamburguesita(),
        appBar: AppBar(
            backgroundColor: kPrimaryColor,
            title: Text(
              'Pedir Ayuda',
              style: GoogleFonts.montserrat(
                color: kTitulos,
                fontWeight: FontWeight.w500,
              ),
            )
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [

              ],
            ),
          ),
        ),
      );
  }
}