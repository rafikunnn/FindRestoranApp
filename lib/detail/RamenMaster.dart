import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class RamenMasterPage extends StatefulWidget {
  const RamenMasterPage({Key? key}) : super(key: key);

  @override
  State<RamenMasterPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<RamenMasterPage> {
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
                          image: AssetImage("assets/RamenMaster.jpg"))),
                ),
                Positioned(
                  top: 16,
                  left: 16,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pop(
                          context); // Ini akan membawa pengguna ke halaman sebelumnya
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
                        "Ramen Master",
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
                      Text("4.5 (1.212 review)",
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
                      Text("10.00 - 22.00 wib",
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
                    "Jl. Retawu No.4, Oro-oro Dowo, Kec. Klojen, Kota Malang, Jawa Timur 65115"),

            // Deskripsi
            TitleDetail(
                title: "Deskripsi",
                detail:
                    "Ramen Master, tanah suci bagi pencinta kuliner yang haus akan kelezatan masakan Jepang. Tersembunyi di jantung Malang, restoran ini menyajikan ramen otentik yang akan memanjakan lidah Anda dan membawa Anda dalam petualangan rasa ke Negeri Sakura.Ketika Anda melewatkan pintu masuk, Anda akan disambut oleh dekorasi yang memukau dan suasana yang lembut. Interior restoran ini memancarkan aura elegan yang menenangkan, membuatnya menjadi tempat yang sempurna untuk bersantai sambil menikmati hidangan lezat. Menu mereka adalah karya seni yang terinspirasi oleh rasa autentik Jepang. Setiap mangkuk ramen diolah dengan cinta dan perhatian, dari kaldu yang gurih hingga mie yang sempurna. "),

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
