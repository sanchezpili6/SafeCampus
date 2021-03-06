import 'package:safecampus/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:safecampus/screens/aboutUs.dart';
import 'package:safecampus/screens/pedirAyuda.dart';
import 'package:safecampus/screens/provideHelp.dart';
import 'package:safecampus/screens/emergencia.dart';
import 'package:safecampus/screens/chatScreen.dart';

class Hamburguesita extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final drawerHeader = UserAccountsDrawerHeader(
      decoration: BoxDecoration(color: kTitulos),
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
                  'Pedir ayuda',
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
                            return ProvideHelp();
                          }
                      )
                  );
                },
              ),
              ListTile(
                title: Text(
                  'Chat',
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
                            return ChatScreen();
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
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context){
                            return emergencia();
                          }
                      )
                  );
                },
              ),
            ],
          ),
        ),
    );
  }
}
