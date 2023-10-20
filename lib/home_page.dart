import 'package:flutter/material.dart';
import 'package:flutter_application_1/detail/Dominos.dart';
import 'package:flutter_application_1/detail/GuriRamen.dart';
import 'package:flutter_application_1/detail/Laffayet.dart';
import 'package:flutter_application_1/detail/RamenMaster.dart';
import 'package:flutter_application_1/detail/Rawon.dart';
import 'package:flutter_application_1/detail/janjijiwa.dart';
import 'package:flutter_application_1/halaman_Category.dart';
import 'package:flutter_application_1/detail/bakso.dart';
import 'package:flutter_application_1/widget/category.dart';
import 'package:flutter_application_1/widget/restaurant_shop.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.bookmark), label: "Category"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profil")
        ],
        onTap: (int index) {
          if (index == 1) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => HomePage2(),
              ),
            );
          }
        },
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    height: 140,
                    width: double.infinity,
                    color: Colors.brown,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                  alignment: Alignment.topLeft,
                                  height: 45,
                                  width: 45,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(
                                          "assets/foto_rapi.jpg"), // Ganti "your_image.png" dengan path ke gambar Anda
                                      fit: BoxFit.cover,
                                    ),
                                    borderRadius: BorderRadius.circular(25),
                                    border: Border.all(
                                      color: Colors.white,
                                      style: BorderStyle.solid,
                                      width: 2,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "Halo Rafi Hakim, Selamat Datang !",
                                  style: GoogleFonts.montserrat(
                                    color: Colors.white,
                                  ),
                                )
                              ],
                            ),
                            Container(
                              alignment: Alignment.topRight,
                              child: Icon(
                                Icons.notifications_active,
                                color: Colors.white,
                                size: 30,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15),
                        child: Container(
                          height: 60,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Color(0xFFF5F5F7),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: TextField(
                            cursorHeight: 20,
                            autofocus: false,
                            decoration: InputDecoration(
                              hintText: "Cari Restaurant Favoritmu",
                              prefixIcon: Icon(Icons.search),
                              border: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.grey, width: 2),
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: Text(
                  " Category ",
                  style: GoogleFonts.montserrat(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: Row(
                  children: [
                    Category(
                      imagePath: "assets/downloadlogo.png",
                      title: "Indonesia",
                    ),
                    Category(
                      imagePath: "assets/logosushi1.png",
                      title: "Japan",
                    ),
                    Category(
                      imagePath: "assets/logopizza.jpg",
                      title: "Western",
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: Text(
                  "Tempat Favorit 🍴",
                  style: GoogleFonts.montserrat(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BaksoPage(),
                    ),
                  );
                },
                child: CoffeShop(
                  imagePath: "assets/baksoP.jpg",
                  nameShop: "Bakso President",
                  rating: "4.2",
                  jamBuka: "08.00 - 22.00",
                  category: "Indonesia",
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: Text(
                  "Tempat Terbaru 🥘",
                  style: GoogleFonts.montserrat(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              // Menggunakan GridView.builder untuk menampilkan tempat terbaru dalam bentuk grid.
              GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // Mengatur jumlah item dalam satu baris.
                ),
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount:
                    2, // Ganti dengan jumlah item yang ingin Anda tampilkan.
                itemBuilder: (context, index) {
                  if (index == 0) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => GuriRamenPage(),
                          ),
                        );
                      },
                      child: CoffeShop(
                        imagePath:
                            "assets/GuriRamen.jpg", // Ganti dengan gambar tempat terbaru.
                        nameShop:
                            "Guri Ramen", // Ganti dengan nama tempat terbaru.
                        rating: "4.5", // Ganti dengan rating tempat terbaru.
                        jamBuka:
                            "13.00 - 23.00", // Ganti dengan jam buka tempat terbaru.
                        category:
                            "Japan", // Ganti dengan kategori tempat terbaru.
                      ),
                    );
                  } else if (index == 1) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                DominosPage(), // Ganti dengan halaman tujuan yang sesuai.
                          ),
                        );
                      },
                      child: CoffeShop(
                        imagePath:
                            "assets/Dominos.jpg", // Ganti dengan gambar tempat terbaru.
                        nameShop:
                            "Dominos Pizza", // Ganti dengan nama tempat terbaru.
                        rating: "3.8", // Ganti dengan rating tempat terbaru.
                        jamBuka:
                            "10.00 - 23.00", // Ganti dengan jam buka tempat terbaru.
                        category:
                            "Western", // Ganti dengan kategori tempat terbaru.
                      ),
                    );
                  }
                },
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: Text(
                  "List Tempat🍴",
                  style: GoogleFonts.montserrat(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => RawonPage(),
                    ),
                  );
                },
                child: CoffeShop(
                  imagePath: "assets/Rawon.jpg",
                  nameShop: "Rawin Nguling",
                  rating: "4.5",
                  jamBuka: "07.00 - 16.00",
                  category: "Indonesia",
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => RamenMasterPage(),
                    ),
                  );
                },
                child: CoffeShop(
                  imagePath: "assets/RamenMaster.jpg",
                  nameShop: "Ramen Master",
                  rating: "4.8",
                  jamBuka: "10.00 - 23.00",
                  category: "Japan",
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => JanjiPage(),
                    ),
                  );
                },
                child: CoffeShop(
                  imagePath: "assets/coffee_2.jpg",
                  nameShop: "Kopi Janji Jiwa",
                  rating: "4.6",
                  jamBuka: "10.00 - 22.00",
                  category: "Indonesia",
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LafayetPage(),
                    ),
                  );
                },
                child: CoffeShop(
                  imagePath: "assets/lafayet.jpg",
                  nameShop: "Laffayet Caffe",
                  rating: "4.6",
                  jamBuka: "10.00 - 22.00",
                  category: "Western",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
