import 'package:atm_consulting/ScreenClient.dart';
import 'package:atm_consulting/ScreenContact.dart';
import 'package:atm_consulting/ScreenEnterprise.dart';
import 'package:atm_consulting/ScreenService.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  void _openEnterprise(){
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context)=> ScreenEnterprise() ));
  }

  void _openService(){
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context)=> ScreenService() ));
  }

  void _openContact(){
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context)=> ScreenContact() ));
  }

  void _openClient(){
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context)=> ScreenClient() ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("ATM Consulting"),
        backgroundColor: Colors.green,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset("images/logo.png"),
            Padding(
              padding: EdgeInsets.only(top: 32),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  GestureDetector(
                    onTap: _openEnterprise,
                    child: Image.asset("images/menu_empresa.png"),
                  ),
                  GestureDetector(
                    onTap: _openService,
                    child: Image.asset("images/menu_servico.png"),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 32),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  GestureDetector(
                    onTap: _openClient,
                    child: Image.asset("images/menu_cliente.png"),
                  ),
                  GestureDetector(
                    onTap: _openContact,
                    child: Image.asset("images/menu_contato.png"),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
