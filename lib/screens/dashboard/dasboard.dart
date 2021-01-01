import 'package:bytebank2/models/saldo.dart';
import 'package:bytebank2/screens/dashboard/saldo.dart';
import 'package:flutter/material.dart';

final String _dashboardTitle = 'Bytebank';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_dashboardTitle),
      ),
      body: Align(
        alignment: Alignment.topCenter,
        child: SaldoCard(Saldo(25.0)),
      ),
    );
  }
}
