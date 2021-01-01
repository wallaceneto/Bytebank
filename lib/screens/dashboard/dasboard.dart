import 'package:bytebank2/models/saldo.dart';
import 'package:bytebank2/screens/dashboard/saldo.dart';
import 'package:bytebank2/screens/deposito/formulario.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

const String _dashboardTitle = 'Bytebank';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_dashboardTitle),
      ),
      body: ListView(
        children: <Widget>[
          Align(
            alignment: Alignment.topCenter,
            child: SaldoCard(),
          ),
          RaisedButton(
            child: Text('Receber depósito'),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return FormularioDeposito();
              }));
            },
          ),
        ],
      ),
    );
  }
}
