import 'package:flutter/material.dart';
import 'package:flutter_application_1/detail/GuriRamen.dart';
import 'package:flutter_application_1/home_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_application_1/widget/category.dart';
import 'package:flutter_application_1/widget/coffe_shop.dart';
import 'package:flutter_application_1/detail/bakso.dart';

class HomePage2 extends StatefulWidget {
  const HomePage2({Key? key}) : super(key: key);

  @override
  State<HomePage2> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage2> {
  String selectedCategory = "All"; // Kategori awal adalah "All"

  // Daftar kategori termasuk "All"
  final List<String> categories = ["All", "Indonesia", "Japan", "Western"];

  // Daftar item
  List<CoffeShop> items = [
    CoffeShop(
      imagePath: "assets/Rawon.jpg",
      nameShop: "Rawon Nguling",
      rating: "4.7",
      jamBuka: "13.00 - 20.00",
      category: "Indonesia",
    ),
    CoffeShop(
      imagePath: "assets/GuriRamen.jpg",
      nameShop: "Guri Ramen",
      rating: "4.7",
      jamBuka: "13.00 - 20.00",
      category: "Japan",
    ),
    CoffeShop(
      imagePath: "assets/coffee_2.jpg",
      nameShop: "Kopi Janji Jiwa",
      rating: "4.6",
      jamBuka: "10.00 - 22.00",
      category: "Indonesia",
    ),
    CoffeShop(
      imagePath: "assets/lafayet.jpg",
      nameShop: "Laffayet Caffe",
      rating: "4.7",
      jamBuka: "13.00 - 20.00",
      category: "Western",
    ),
    CoffeShop(
      imagePath: "assets/baksoP.jpg",
      nameShop: "Bakso President",
      rating: "4.8",
      jamBuka: "10.00 - 23.00",
      category: "Indonesia",
    ),
    CoffeShop(
      imagePath: "assets/Dominos.jpg",
      nameShop: "Dominos Pizza",
      rating: "4.9",
      jamBuka: "13.00 - 23.00",
      category: "Western",
    ),
    CoffeShop(
      imagePath: "assets/RamenMaster.jpg",
      nameShop: "RamenMaster",
      rating: "4.7",
      jamBuka: "13.00 - 20.00",
      category: "Japan",
    ),
  ];

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
          if (index == 0) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => HomePage(),
              ),
            );
          }
        },
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                    height: 140, width: double.infinity, color: Colors.brown),
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
                                width: 8,
                              ),
                              Container(
                                constraints: BoxConstraints(
                                    maxWidth: 200), // Batasi lebar maksimum
                                child: Text(
                                  "Rafi Hakim, Selamat Menikmati !",
                                  style: GoogleFonts.montserrat(
                                    color: Colors.white,
                                    fontSize: 12,
                                  ),
                                ),
                              ),
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
                  ],
                )
              ],
            ),

            // Daftar kategori
            Padding(
              padding: const EdgeInsets.all(15),
              child: Row(
                children: categories.map((category) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedCategory =
                            category; // Perbarui kategori yang dipilih
                      });
                    },
                    child: Container(
                      margin: EdgeInsets.only(right: 10),
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      decoration: BoxDecoration(
                        color: selectedCategory == category
                            ? Colors.blue // Warna kategori yang dipilih
                            : Colors.grey, // Warna kategori lain
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        category,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),

            // Tampilkan item sesuai kategori yang dipilih
            Column(
              children: items
                  .where((item) =>
                      selectedCategory == "All" ||
                      item.category == selectedCategory)
                  .map((item) {
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
                    imagePath: item.imagePath,
                    nameShop: item.nameShop,
                    rating: item.rating,
                    jamBuka: item.jamBuka,
                    category: item.category,
                  ),
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
