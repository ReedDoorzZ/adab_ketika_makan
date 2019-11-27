import 'package:flutter/material.dart';

void main() => runApp(TampilAdab());

class TampilAdab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Adab Menuntut Ilmu"),
          centerTitle: true,
        ),
        body: FirstScreen(),
      ),
    );
  }
}

class FirstScreen extends StatefulWidget {
  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  List<String> textindo = [
    "Sebelum makan dianjurkan baca basmallah.",
    "Makan dan minum harus dengan posisi duduk.",
    "Tidak berbicara saat sedang makan.",
    "Menggunakan tangan kanan saat sedang makan.",
    "Tenang dan tidak tergesa-gesa saat makan, dan makanan tidak berceceran.",
    "Tidak makan sambil berjalan.",
    "Makan secukupnya dan tidak berlebihan.",
    "Tidak membicarakan hal-hal buruk saat makan.",
    "Tidak mengejek makanan",
    "Makan dahulukan dari yg terdekat",
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: textindo.length,
        itemBuilder: (BuildContext context, int posisi) {
          return Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: <Widget>[
                    Text(posisi.toString()),
                    Text(textindo[posisi])
                  ],
                ),
              ),
            ),
          );
        });
  }
}
