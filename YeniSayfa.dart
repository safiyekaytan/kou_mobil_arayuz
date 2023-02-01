import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'bilgiler.dart';
import 'main.dart';

//   Text(widget.kisi1.department),
class YeniSayfa extends StatefulWidget {
  Bilgiler kisi1;
  YeniSayfa({super.key, required this.kisi1});

  @override
  State<YeniSayfa> createState() => _YeniSayfaState();
}

var padding1 = Padding(
  padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
  child: Column(
    children: [
      SizedBox(
        height: 10,
      ),
      Text("Yarıyıl Notlarım"),
      SizedBox(
        height: 20,
      ),
      Icon(Icons.equalizer),
    ],
  ),
);

var padding2 = Padding(
  padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
  child: Column(
    children: [
      SizedBox(
        height: 10,
      ),
      Text("Ders Programım"),
      SizedBox(
        height: 20,
      ),
      Icon(Icons.calendar_today),
    ],
  ),
);
var padding3 = Padding(
  padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
  child: Column(
    children: [
      SizedBox(
        height: 10,
      ),
      Text("Ders Listesi"),
      SizedBox(
        height: 20,
      ),
      Icon(Icons.list),
    ],
  ),
);
var padding4 = Padding(
  padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
  child: Column(
    children: [
      SizedBox(
        height: 10,
      ),
      Text("Mesaj"),
      SizedBox(
        height: 20,
      ),
      Icon(Icons.message),
    ],
  ),
);
var padding5 = Padding(
  padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
  child: Column(
    children: [
      SizedBox(
        height: 10,
      ),
      Text("Duyurular"),
      SizedBox(
        height: 20,
      ),
      Icon(Icons.abc),
    ],
  ),
);
var padding6 = Padding(
  padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
  child: Column(
    children: [
      SizedBox(
        height: 10,
      ),
      Text("Yararlı Bağlantılar"),
      SizedBox(
        height: 20,
      ),
      Icon(Icons.link),
    ],
  ),
);

class _YeniSayfaState extends State<YeniSayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu),
          color: Colors.black,
          onPressed: () => Scaffold.of(context).openDrawer(),
        ),
        backgroundColor: Colors.white,
        actions: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: SizedBox(
                  width: 60,
                  child: Image.asset("images/kou.png"),
                ),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                child: Text("KOÜ",
                    style: TextStyle(
                        color: Colors.green,
                        fontSize: 20,
                        fontWeight: FontWeight.bold)),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(0, 20, 100, 0),
                child: Text(
                  "MOBİL",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ],
      ),
      body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(20, 30, 50, 0),
                child: SizedBox(
                    width: 80, child: Image.asset("images/profil.jpg")),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  Text(
                    "${widget.kisi1.name} ${widget.kisi1.surname}",
                    style: TextStyle(fontSize: 20),
                  ),
                  Text((widget.kisi1.id).toString(),
                      style: TextStyle(fontSize: 20)),
                  Text(widget.kisi1.faculty),
                  Text(widget.kisi1.department),
                  Text("2022/2023 Eğitim Öğretim Yılı"),
                  Text("AGNO: ${widget.kisi1.agno}")
                ],
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Image.asset("images/cizgi.png"),
          Container(
            height: 400,
            width: 700,
            child: Padding(
              padding: EdgeInsets.fromLTRB(20, 38, 20, 0),
              child: GridView.count(
                crossAxisCount: 2, //bir satırda kaç item görüncek

                mainAxisSpacing: 5,

                crossAxisSpacing: 5,

                childAspectRatio:
                    1.5 / 1, //item oranlaması genişlik 2, yükseklik 1

                children: [
                  Card(
                    color: Color.fromARGB(255, 212, 211, 211),
                    child: padding1,
                  ),
                  Card(
                      color: Color.fromARGB(255, 212, 211, 211),
                      child: padding2),
                  Card(
                      color: Color.fromARGB(255, 212, 211, 211),
                      child: padding3),
                  Card(
                    color: Color.fromARGB(255, 212, 211, 211),
                    child: padding4,
                  ),
                  Card(
                    color: Color.fromARGB(255, 212, 211, 211),
                    child: padding5,
                  ),
                  Card(
                    color: Color.fromARGB(255, 212, 211, 211),
                    child: padding6,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      drawer: Drawer(
        backgroundColor: Colors.pink,
        child: ListView(
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.red,
              ),
              child: Text("baslik"),
            ),
            ListTile(
              leading: const Icon(
                Icons.home,
              ),
              title: const Text("item 1"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text("item 2"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}


/*


 Row(
      children: [
        Padding(
          padding: EdgeInsets.fromLTRB(40, 80, 0, 0),
          child: SizedBox(width: 70, child: Image.asset("images/profil.png")),
        ),
      ],
    ),



*/