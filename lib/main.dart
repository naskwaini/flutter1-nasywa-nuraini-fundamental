import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Kalkulator Flutter",
    debugShowCheckedModeBanner: false,
    home: kalkulator(),
  ));
}

class kalkulator extends StatefulWidget {
  @override
  _kalkulatorState createState() => _kalkulatorState();
}

class _kalkulatorState extends State<kalkulator> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    TextEditingController conBil1 = TextEditingController();
    TextEditingController conBil2 = TextEditingController();
    TextEditingController conBilhasil = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: Text("Kakulator Sederhana"),
      ),
      body: Form(
        key: _formKey,
        child: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: TextFormField(
                  controller: conBil1,
                  autofocus: true,
                  decoration: new InputDecoration(
                    hintText: "Enter First Number",
                    labelText: "Masukan Nilai",
                    border: OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(5.0)),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: TextFormField(
                  controller: conBil2,
                  autofocus: true,
                  decoration: new InputDecoration(
                    hintText: "Enter Second Number",
                    labelText: "Masukan Nilai",
                    border: OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(5.0)),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Text(
                  'RESULT:',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: TextFormField(
                  controller: conBilhasil,
                  decoration: new InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(5.0)),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: RaisedButton(
                  child: Text(
                    "ADD",
                    style: TextStyle(color: Colors.white),
                  ),
                  color: Color.fromARGB(255, 104, 54, 168),
                  onPressed: () {
                    double bilangan1 = double.parse(conBil1.text);
                    double bilangan2 = double.parse(conBil2.text);
                    double hasil = bilangan1 + bilangan2;

                    conBilhasil.text = hasil.toString();
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: RaisedButton(
                  child: Text(
                    "SUBSTRACT",
                    style: TextStyle(color: Colors.white),
                  ),
                  color: Color.fromARGB(255, 104, 54, 168),
                  onPressed: () {
                    double bilangan1 = double.parse(conBil1.text);
                    double bilangan2 = double.parse(conBil2.text);
                    double hasil = bilangan1 - bilangan2;

                    conBilhasil.text = hasil.toString();
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: RaisedButton(
                  child: Text(
                    "MULTIPLY",
                    style: TextStyle(color: Colors.white),
                  ),
                  color: Color.fromARGB(255, 104, 54, 168),
                  onPressed: () {
                    double bilangan1 = double.parse(conBil1.text);
                    double bilangan2 = double.parse(conBil2.text);
                    double hasil = bilangan1 * bilangan2;

                    conBilhasil.text = hasil.toString();
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: RaisedButton(
                  child: Text(
                    "DIVIDE",
                    style: TextStyle(color: Colors.white),
                  ),
                  color: Color.fromARGB(255, 104, 54, 168),
                  onPressed: () {
                    double bilangan1 = double.parse(conBil1.text);
                    double bilangan2 = double.parse(conBil2.text);
                    double hasil = bilangan1 / bilangan2;

                    conBilhasil.text = hasil.toString();
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
