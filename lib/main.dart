import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Suma y resta de dos números',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: OperacionesDosNumeros(),
    );
  }
}

class OperacionesDosNumeros extends StatefulWidget {
  @override
  _OperacionesDosNumerosState createState() => _OperacionesDosNumerosState();
}

class _OperacionesDosNumerosState extends State<OperacionesDosNumeros> {
  final _primerNumeroController = TextEditingController();
  final _segundoNumeroController = TextEditingController();

  int _resultado = 0;

  void _sumarNumeros() {
    int primerNumero = int.parse(_primerNumeroController.text);
    int segundoNumero = int.parse(_segundoNumeroController.text);

    setState(() {
      _resultado = primerNumero + segundoNumero;
    });
  }

  void _restarNumeros() {
    int primerNumero = int.parse(_primerNumeroController.text);
    int segundoNumero = int.parse(_segundoNumeroController.text);

    setState(() {
      _resultado = primerNumero - segundoNumero;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Suma y resta de dos números'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: _primerNumeroController,
              decoration: InputDecoration(
                hintText: 'Ingresa el primer número',
              ),
              keyboardType: TextInputType.number,
            ),
            TextField(
              controller: _segundoNumeroController,
              decoration: InputDecoration(
                hintText: 'Ingresa el segundo número',
              ),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: _sumarNumeros,
                  child: Text('Sumar'),
                ),
                ElevatedButton(
                  onPressed: _restarNumeros,
                  child: Text('Restar'),
                ),
              ],
            ),
            SizedBox(height: 16),
            Text('El resultado es: $_resultado'),
          ],
        ),
      ),
    );
  }
}
