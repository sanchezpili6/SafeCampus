import 'package:safecampus/constants/colors.dart';
import 'package:flutter/material.dart';

class Hamburguesita extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('SafeCampus')),
      body: Center(child: Text('aquí va el home')),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Menu'),
              decoration: BoxDecoration(
                color: kContraste2,
              ),
            ),
            ListTile(
              title: Text('Quiero ayuda'),
              onTap: (){
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Quiero ayudar'),
              onTap: (){
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Botón de emergencia'),
              onTap: (){
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}