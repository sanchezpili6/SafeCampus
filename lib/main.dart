import 'package:flutter/material.dart';
import 'package:safecampus/constants/colors.dart';
import 'package:safecampus/hamburguesita.dart';

void main() => runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(
          primaryColor: kPrimaryColor,
          accentColor: kContraste1,
          primaryColorDark: kNocturno
      ),
      home: Hamburguesita(),
    )
);