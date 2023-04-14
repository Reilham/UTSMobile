import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class profilepage extends StatelessWidget {
  const profilepage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget Coba() {
      return Container(
        child: Container(
          child: Center(
            child: Stack(
              children: <Widget>[
                CircleAvatar(
                    radius: 80.0,
                    backgroundImage: AssetImage("assets/fotoei.jpg")),
                Positioned(
                  bottom: 20,
                  right: 20,
                  child: Icon(
                    Icons.camera_alt,
                    color: Colors.teal,
                    size: 28,
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    }

    Widget textheader() {
      return Container(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(left: 35, right: 35),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(Icons.account_box_outlined),
                      SizedBox(
                        width: 6,
                      ),
                      Text(
                        "Reilham Riziq Algani",
                        style: TextStyle(fontSize: 15),
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      Icon(Icons.phone_outlined),
                      SizedBox(width: 6),
                      Text(
                        "089524386715",
                        style: TextStyle(fontSize: 15),
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      Icon(Icons.email_outlined),
                      SizedBox(width: 6),
                      Text(
                        "reilham.ra@gmail.com",
                        style: TextStyle(fontSize: 15),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget HotItem() {
      Widget categoryCard(String img, String text, String SubText) {
        return Container(
          width: 210,
          margin: const EdgeInsets.only(right: 12, left: 12),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color.fromARGB(255, 255, 255, 255),
            border: Border.all(
              color: Colors.black12,
              width: 5,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage(img))),
              ),
              const SizedBox(
                height: 12,
              ),
              Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color.fromARGB(255, 0, 0, 0).withOpacity(0.9),
                    Color.fromARGB(255, 0, 0, 0).withOpacity(0.0),
                  ],
                )),
                child: Text(
                  text,
                  style: GoogleFonts.poppins(
                    color: const Color(0xff090A0A),
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color.fromARGB(255, 0, 0, 0).withOpacity(0.9),
                    Color.fromARGB(255, 0, 0, 0).withOpacity(0.0),
                  ],
                )),
                child: Text(
                  SubText,
                  style: GoogleFonts.poppins(
                    color: const Color(0xff090A0A),
                    fontSize: 12,
                  ),
                ),
              ),
            ],
          ),
        );
      }

      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 20,
          ),
          Container(
            margin: const EdgeInsets.only(left: 24, bottom: 16),
            decoration: BoxDecoration(
                gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color.fromARGB(255, 243, 239, 239).withOpacity(0.9),
                Color.fromARGB(255, 244, 241, 241).withOpacity(0.0),
              ],
            )),
            child: Text(
              "item buy",
              style: GoogleFonts.poppins(
                color: const Color(0xff090A0A),
                fontSize: 18,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          Container(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Container(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      width: 24,
                    ),
                    categoryCard(
                        "assets/favorite_img_4.jpg", "cactus", "RP.726.000"),
                    categoryCard(
                        "assets/favorite_img_2.jpg", "Chair", "RP.17.000"),
                  ],
                ),
              ),
            ),
          ),
        ],
      );
    }

    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 16,
            ),
            const SizedBox(
              height: 24,
            ),
            Coba(),
            textheader(),
            HotItem(),
            HotItem(),
          ],
        ),
      )),
    );
  }
}
