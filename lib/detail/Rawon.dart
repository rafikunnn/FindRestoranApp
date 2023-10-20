import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class RawonPage extends StatefulWidget {
  const RawonPage({Key? key}) : super(key: key);

  @override
  State<RawonPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<RawonPage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double widht = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Tumpukan foto dan Container Nama Toko
            Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Container(
                  height: height * 0.3,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/Rawon.jpg"))),
                ),
                Positioned(
                  top: 16,
                  left: 16,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      child: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                    ),
                  ),
                ),
                Positioned(
                    top: 16,
                    right: 16,
                    child: Container(
                      child: Icon(
                        Icons.assistant_direction,
                        color: Colors.white,
                      ),
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                    )),
                Container(
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Text(
                        "Rawon Nguling",
                        style: GoogleFonts.montserrat(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                    height: height * .07,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20))))
              ],
            ),
            // Row rating dan jam buka
            Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text("4.5 (7.151 review)",
                          style: GoogleFonts.montserrat(fontSize: 12))
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.access_time,
                        color: Colors.grey,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text("07.00 - 16.00 wib",
                          style: GoogleFonts.montserrat(fontSize: 12))
                    ],
                  )
                ],
              ),
            ),

            // Card promo
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                color: Colors.amber[100],
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text(
                            "Ada promo untuk kamu",
                            style: GoogleFonts.montserrat(fontSize: 12),
                          ),
                          Text("Dapatkan diskon 100 ribu",
                              style: GoogleFonts.montserrat(fontSize: 11)),
                        ],
                      ),
                      ElevatedButton(onPressed: () {}, child: Text("Tukar"))
                    ],
                  ),
                ),
              ),
            ),

            // Alamat
            TitleDetail(
                title: "Alamat",
                detail:
                    "Jl. Zainul Arifin No.62, RT.01/RW.01, Kiduldalem, Kec. Klojen, Kota Malang, Jawa Timur 65119"),

            // Deskripsi
            TitleDetail(
                title: "Deskripsi",
                detail:
                    "Rawon Nguling, harta tersembunyi Malang yang menawarkan kenikmatan kuliner yang tak tertandingi. Di tengah hiruk-pikuk kota, tempat ini adalah surga bagi para pecinta masakan Indonesia, khususnya rawon. Setelah Anda memasuki pintu restoran ini, Anda akan disambut oleh aroma harum yang menggoda, membawa Anda ke perjalanan rasa yang luar biasa. Rawon, hidangan khas Jawa Timur, adalah spesialisasi mereka yang tak terbantahkan. Mangkuk berisi kaldu hitam pekat yang kaya, daging sapi lembut, serta berbagai bumbu dan rempah khas Jawa, akan menggoyang lidah Anda dan meninggalkan Anda ingin kembali lagi dan lagi."),

            // Title Ulasan / Comment
          ],
        )),
      ),
    );
  }
}

class TitleDetail extends StatelessWidget {
  final String title;
  final String detail;
  const TitleDetail({Key? key, required this.title, required this.detail})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: GoogleFonts.montserrat(
                fontSize: 12, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10,
          ),
          Text(detail, style: GoogleFonts.montserrat(fontSize: 12))
        ],
      ),
    );
  }
}
