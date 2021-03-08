import 'package:flutter/material.dart';
import './detail.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'First App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Produk Laptop dan PC")),
      body: ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.fromLTRB(2.0, 10.0, 2.0, 10.0),
        children: <Widget>[
          new GestureDetector(
            onTap: () {
              Navigator.of(context).push(new MaterialPageRoute(
                builder: (BuildContext context) => DetailProduk(
                  nama: "Laptop ROG Master",
                  deskripsi:
                      "Laptop ROG adalah sebuah laptop gaming yang sangat kencang di pasaran dunia IT sekarang.",
                  harga: 15000000,
                  gambar: "foto.jpg",
                  star: 4,
                ),
              ));
            },
            child: ProductBox(
                nama: "Acer Nitro 5",
                deskripsi:
                    "Laptop terbaik di brand acer dan sangar kencang dalam hal coding dan gaming.",
                harga: 13000000,
                gambar: "Acer.png",
                star: 3),
          ),
          new GestureDetector(
            onTap: () {
              Navigator.of(context).push(new MaterialPageRoute(
                builder: (BuildContext context) => DetailProduk(
                  nama: "PC Robot TOP",
                  deskripsi:
                      "PC Gaming dan Editing dengan intel core I9 dan ram 16GB.",
                  harga: 25000000,
                  gambar: "pc robot.jpeg",
                  star: 5,
                ),
              ));
            },
            child: ProductBox(
                nama: "Macbook Air 2021",
                deskripsi:
                    "Laptop MAC OS terbaru dan terbaik di kelas nya pasti joss.",
                harga: 10000000,
                gambar: "macbook air.jpg",
                star: 3),
          ),
          new GestureDetector(
            onTap: () {
              Navigator.of(context).push(new MaterialPageRoute(
                builder: (BuildContext context) => DetailProduk(
                  nama: "PC Intel 2000",
                  deskripsi: "PC office yang sangat untuk bekerja.",
                  harga: 700000,
                  gambar: "pc intel.jpeg",
                  star: 2,
                ),
              ));
            },
            child: ProductBox(
                nama: "PC PRO",
                deskripsi:
                    "bagus untuk budget mahasiswa dan pelajar yang bermimpi punya PC.",
                harga: 900000,
                gambar: "pc pro.jpeg",
                star: 3),
          ),
          new GestureDetector(
            onTap: () {
              Navigator.of(context).push(new MaterialPageRoute(
                builder: (BuildContext context) => DetailProduk(
                  nama: "Laptop Lenovo",
                  deskripsi:
                      "Salah satu laptop idaman para kaum wanita di dunia IT.",
                  harga: 800000,
                  gambar: "lenovo.jpg",
                  star: 2,
                ),
              ));
            },
            child: ProductBox(
                nama: "Laptop HP 12",
                deskripsi:
                    "Dengan kemampuan intel I5 membuat laptop ini enak digunakan untuk kerja di office.",
                harga: 600000,
                gambar: "HP.jpg",
                star: 3),
          ),
        ],
      ),
    );
  }
}

class ProductBox extends StatelessWidget {
  ProductBox(
      {Key key, this.nama, this.deskripsi, this.harga, this.gambar, this.star})
      : super(key: key);
  final String nama;
  final String deskripsi;
  final int harga;
  final String gambar;
  final int star;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(2),
      height: 120,
      child: Card(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Image.asset(
              "assets/appimage/" + gambar,
              width: 150,
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(this.nama,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        )),
                    Text(this.deskripsi),
                    Text(
                      "Harga: " + this.harga.toString(),
                      style: TextStyle(color: Colors.green.shade700),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
