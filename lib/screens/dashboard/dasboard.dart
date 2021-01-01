import 'package:bytebank2/models/saldo.dart';
import 'package:bytebank2/screens/dashboard/saldo.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

final String _dashboardTitle = 'Bytebank';

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
          Consumer<Saldo>(
            builder: (context, saldo, child) {
              return RaisedButton(
                child: Text('Adiciona'),
                onPressed: () {
                  saldo.adiciona(10);
                },
              );
            },
          ),
          Consumer<Saldo>(
            builder: (context, saldo, child) {
              return RaisedButton(
                child: Text('Subtrai'),
                onPressed: () {
                  saldo.subtrai(10);
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
