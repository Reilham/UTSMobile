import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:utsmobile/Profilepage.dart';
import 'package:utsmobile/homepage.dart';

class homepage extends StatelessWidget {
  const homepage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color.fromARGB(255, 152, 118, 118).withOpacity(0.9),
            Color.fromARGB(255, 152, 118, 118).withOpacity(0.0),
          ],
        )),
        margin: const EdgeInsets.symmetric(horizontal: 24),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 32,
              width: 32,
              decoration: const BoxDecoration(
                  image: DecorationImage(image: AssetImage("assets/menu.png"))),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 100),
              child: Text(
                "Discover",
                style: GoogleFonts.poppins(
                  color: const Color(0xff090A0A),
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget Category() {
      Widget categoryCard(String img, String text, String SubText) {
        return Container(
          width: 142,
          margin: const EdgeInsets.only(right: 16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color.fromARGB(255, 158, 136, 136),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 142,
                width: 142,
                decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage(img))),
              ),
              const SizedBox(
                height: 12,
              ),
              Text(
                text,
                style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                SubText,
                style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontSize: 12,
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
            height: 32,
          ),
          Container(
            margin: const EdgeInsets.only(left: 24, bottom: 16),
            decoration: BoxDecoration(
                gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color.fromARGB(255, 152, 118, 118).withOpacity(0.9),
                Color.fromARGB(255, 152, 118, 118).withOpacity(0.0),
              ],
            )),
            child: Text(
              "Category",
              style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  backgroundColor: Color.fromARGB(0, 111, 111, 131)),
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
                        "assets/plant_white_bg.png", "Plant", "plant pavorite"),
                    categoryCard(
                        "assets/lamp_white_bg.png", "Lamp", "lamp pavorite"),
                    categoryCard(
                        "assets/chair_white_bg.png", "chair", "chair pavorite"),
                  ],
                ),
              ),
            ),
          ),
        ],
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
              "Hot Item",
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
                    categoryCard("assets/favorite_img_3.jpeg", "Wooden Chair",
                        "RP.234.000"),
                    categoryCard("assets/favorite_img_1 .jpg", "Elegant Lamp",
                        "RP.432.000"),
                    categoryCard("assets/favorite_img_5.jpg", "Beach Beautiful",
                        "RP.345.000"),
                    categoryCard("assets/favorite_img_6.jpg", "Arcitectural",
                        "RP.133.000"),
                  ],
                ),
              ),
            ),
          ),
        ],
      );
    }

    Widget button() {
      return Container(
        child: Padding(
          padding: const EdgeInsets.only(left: 8),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color.fromARGB(255, 255, 255, 255),
              border: Border.all(
                color: Color.fromARGB(255, 189, 181, 181),
                width: 5,
              ),
            ),
            margin: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const profilepage()),
                    );
                  },
                  child: Container(
                    margin: EdgeInsets.only(bottom: 8),
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 208, 207, 207),
                        borderRadius: BorderRadius.circular(17)),
                    child: Icon(
                      Icons.account_circle,
                      color: Colors.black,
                      size: 60,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20, right: 20),
                  child: Column(
                    children: [
                      TextField(
                        style: TextStyle(color: Colors.black),
                        decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                color: Colors.black,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                color: Colors.black,
                              ),
                            ),
                            hintText: "what are you looking for?",
                            hintStyle: TextStyle(color: Colors.black),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            )),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
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
            header(),
            Category(),
            HotItem(),
            button(),
          ],
        ),
      )),
    );
  }
}
