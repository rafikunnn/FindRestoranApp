import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/home_page.dart';
import 'package:google_fonts/google_fonts.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Image.asset(
              "assets/makanan.jpg",
              fit: BoxFit.cover,
              height: double.infinity,
              width: double.infinity,
              alignment: Alignment.center,
            ),
            Positioned(
                top: 40,
                child: Text(
                  " AYO MAKAN ",
                  style:
                      GoogleFonts.montserrat(color: Colors.white, fontSize: 30),
                )),
            Positioned(
                bottom: 30,
                left: 10,
                right: 10,
                child: Card(
                  color: Colors.black.withOpacity(0.3),
                  elevation: 8.0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  child: Column(children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        "Cari tempat makan, sekarang !",
                        style: GoogleFonts.montserrat(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 16, right: 16, bottom: 8),
                      child: Text(
                          "Untuk menikmati semua fitur kami, Anda perlu memulai terlebih dahulu",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.montserrat(
                              fontSize: 12, color: Colors.white)),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: InkWell(
                        highlightColor: Colors.transparent,
                        splashColor: Colors.transparent,
                        hoverColor: Colors.black,
                        onTap: () {
                          // Tindakan yang ingin Anda lakukan saat card diklik

                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => HomePage(),
                              ));
                        },
                        child: Card(
                          color: Color.fromARGB(255, 132, 96, 70),
                          margin: EdgeInsets.symmetric(horizontal: 50),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                width: 5,
                                height: 55,
                              ),
                              Text(
                                'Get Started',
                                style: GoogleFonts.lato(
                                    fontSize: 22,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                      ),
                    )
                  ]),
                ))
          ],
        ),
      ),
    );
  }
}
