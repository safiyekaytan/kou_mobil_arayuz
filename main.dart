import 'package:flutter/material.dart';
import 'package:flutter_application_1/YeniSayfa.dart';
import 'bilgiler.dart';
import 'dart:ffi';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool value = false;
  var kisi = Bilgiler("Çağla", "ŞAŞMAZ", 200202076, "Mühendislik Fakültesi",
      "Bilgisayar Mühendisliği (İÖ)", 3);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(60, 40, 0, 0),
                child:
                    SizedBox(width: 100, child: Image.asset("images/kou.png")),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(10, 30, 0, 0),
                child: Text("KOÜ",
                    style: TextStyle(
                        color: Colors.green,
                        fontSize: 30,
                        fontWeight: FontWeight.bold)),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(5, 30, 0, 0),
                child: Text(
                  "Mobil",
                  style: TextStyle(color: Colors.black, fontSize: 30),
                ),
              ),
            ],
          ),
          const Text(""),
          const Text("Kocaeli Üniversitesi mobil uygulamasına Hoşgeldiniz!",
              style: TextStyle(color: Colors.grey, fontSize: 13)),
          const Text("Hoşgeldiniz!",
              style: TextStyle(color: Colors.grey, fontSize: 13)),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 60, 0, 0),
            child: TextFormField(
              decoration: const InputDecoration(
                icon: Icon(Icons.person),
                hintText: "Öğrenci numaranızı giriniz",
                labelText: "Numara",
              ),
            ),
          ),
          TextFormField(
            obscureText: true,
            decoration: const InputDecoration(
              icon: Icon(Icons.person),
              hintText: "ÖBS Şifrenizi giriniz",
              labelText: "Şifre",
            ),
          ),
          Row(
            children: [
              Checkbox(
                value: value,
                onChanged: (value) {},
              ),
              const Text(
                "Beni Hatırla",
                style: TextStyle(color: Colors.grey, fontSize: 17),
              ),
            ],
          ),
          TextButton(
            style: TextButton.styleFrom(
              backgroundColor: Colors.green,
              padding: EdgeInsets.all(16.0),
            ),
            onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => YeniSayfa(kisi1: kisi))),
            child: const Text("            Giriş            ",
                style: TextStyle(color: Colors.white)),
          ),
          const SizedBox(
            height: 5,
          ),
          TextButton(
            style: TextButton.styleFrom(
              backgroundColor: Colors.green,
              padding: EdgeInsets.all(16.0),
            ),
            onPressed: null,
            child: const Text("Yararlı Bağlantılar",
                style: TextStyle(color: Colors.white)),
          ),
        ],
      ),
    );
  }
}
