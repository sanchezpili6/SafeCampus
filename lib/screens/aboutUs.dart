import 'dart:ui';
import 'package:safecampus/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:safecampus/hamburguesita.dart';

class aboutUs extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      drawer: Hamburguesita(),
      appBar: AppBar(
          backgroundColor: kPrimaryColor,
          title: Text(
            'Sobre nosotros',
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
              Text(
                'Conócenos',
                style: GoogleFonts.montserrat(
                    color: kContraste2,
                    fontWeight: FontWeight.w500
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Somos una red de apoyo para aquellas personas que no tienen la seguridad y la confianza de abrirse para denunciar a sus agresores y romper su silencio, somos ese primer contacto de seguridad y atención, acompañándolas en su camino de reconstrucción en un ambiente digno y seguro.',
                style: GoogleFonts.montserrat(
                    color: kTitulos,
                    fontWeight: FontWeight.w300
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Nuestra comunidad tiene como objetivo enfatizar el sentido de sororidad y empoderamiento entre mujeres creando espacios de confianza, alianza y fuerza para que ellas puedan perder el miedo a levantar su voz. ',
                style: GoogleFonts.montserrat(
                    color: kTitulos,
                    fontWeight: FontWeight.w300
                ),
              ),
              SizedBox(height: 10),
              Text(
                '¿Cómo puedo ser parte del networking y cómo podría ayudar?',
                style: GoogleFonts.montserrat(
                    color: kContraste2,
                    fontWeight: FontWeight.w500
                ),
              ),
              SizedBox(height: 10),
              Text(
                '¡Es muy fácil! Registrate en la plataforma, contesta las preguntas filtro',
                style: GoogleFonts.montserrat(
                    color: kTitulos,
                    fontWeight: FontWeight.w300
                ),
              ),
              SizedBox(height: 10),
              Text(
                '¿De qué manera puedo recibir acompañamiento y ser apoyada?',
                style: GoogleFonts.montserrat(
                    color: kContraste2,
                    fontWeight: FontWeight.w500
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Aunque no ofrecemos directamente asistencia legal ni profesional, ofrecemos un networking en la que otras mujeres te podrán contactar para poder aconsejarte, acompañarte en todo tu proceso y dirigirte con profesionales apropiados. Si es que no te sientes cómoda teniendo esta interacción directamente, puedes identificarte anónimamente para pedir este apoyo.',
                style: GoogleFonts.montserrat(
                    color: kTitulos,
                    fontWeight: FontWeight.w300
                ),
              ),
            ],
          ),
        ),

    ),
    );
  }
}