import 'package:safecampus/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:safecampus/screens/aboutUs.dart';
import 'package:safecampus/screens/pedirAyuda.dart';

class Hamburguesita extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final drawerHeader = UserAccountsDrawerHeader(
      decoration: BoxDecoration(
          color: kTitulos
      ),
      accountName: Text(
        'Juanita',
        style: GoogleFonts.montserrat(
          color: kContraste1,
          fontWeight: FontWeight.w300,
            fontSize: 15
        ),
      ),
      accountEmail: Text(
        'juanita@gmail.com',
        style: GoogleFonts.montserrat(
          color: kContraste1,
          fontWeight: FontWeight.w300,
            fontSize: 15
        ),
      ),
      currentAccountPicture: CircleAvatar(
        child: FlutterLogo(size: 50.0),
        backgroundColor: kPrimaryColor,
      ),
    );
    return Theme(
      data: Theme.of(context).copyWith(
        canvasColor: kContraste1
      ),
      child: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              Container(
                padding: null,
                child: drawerHeader
              ),
              ListTile(
                title: Text(
                  'Sobre nosotros',
                  style: GoogleFonts.montserrat(
                      color: kContraste2,
                      fontWeight: FontWeight.w500,
                      fontSize: 20
                  ),
                ),
                onTap: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context){
                            return aboutUs();
                          }
                      )
                  );
                },
              ),
              ListTile(
                title: Text(
                  'Quiero ayuda',
                  style: GoogleFonts.montserrat(
                    color: kContraste2,
                    fontWeight: FontWeight.w500,
                    fontSize: 20
                  ),
                ),
                onTap: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context){
                            return pedirAyuda();
                          }
                      )
                  );
                },
              ),
              ListTile(
                title: Text(
                  'Quiero ayudar',
                    style: GoogleFonts.montserrat(
                    color: kContraste2,
                    fontWeight: FontWeight.w500,
                    fontSize: 20
                ),
                ),
                onTap: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context){
                            return aboutUs();
                          }
                      )
                  );
                },
              ),
              ListTile(
                trailing: Icon(Icons.report_problem, color: Colors.redAccent,),
                title: Text(
                  'EMERGENCIA',
                  style: GoogleFonts.montserrat(
                  color: Colors.redAccent,
                  fontWeight: FontWeight.w500,
                      fontSize: 20
                ),
                ),
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