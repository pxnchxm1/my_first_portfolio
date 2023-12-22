import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text("My Portfolio",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.black87),),
      //   backgroundColor: Colors.green,
      // ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 400,
              width: 400,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Hi, I'm ",
                          style: GoogleFonts.openSans(
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                              color: Colors.black),
                        ),
                        Text(
                          "Panchami P Kumar",
                          style: GoogleFonts.openSans(
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                              color: Colors.blueAccent),
                        ),

                      ],
                    ),
                    Text("Student,at", style: GoogleFonts.openSans(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        color: Colors.black),),

                    Container(
                      padding: const EdgeInsets.all(5),
                      height: 200,
                      width: 200,
                      decoration: const BoxDecoration(
                        shape: BoxShape.rectangle,
                        image: DecorationImage(
                            image: AssetImage("images/srmlogo.jpg")
                        ),
                      ),
                    ),
                    Text(
                      "I love Coding in python !\nI'm a passionate student with a knack of good problem-solving skills!",
                      style: GoogleFonts.openSans(
                          fontSize: 20, color: Colors.grey.shade700),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/about');
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.white),
                        foregroundColor: MaterialStateProperty.all(Colors.blueAccent)
                      ),
                      child: SizedBox(
                        height: 41,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "About me",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.openSans(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                            const SizedBox(width: 10),
                            const Icon(Icons.arrow_forward_ios_rounded,
                                size: 20,
                                color: Colors.black)
                          ],
                        ),
                      ),

                    ),

                  ]
              ),
            ),


            const SizedBox(width: 50),

            Hero(
              tag: "photo",
              child: Container(
                height: 300,
                width: 300,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(color: Colors.blueAccent,
                        spreadRadius: 5,
                        blurRadius: 5,
                        offset: Offset(0, 0))
                  ],
                  image: DecorationImage(
                    alignment: Alignment(0, 0),
                    image: AssetImage("images/mypic.png"),

                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(width:230),
            Container(
              width: 300,
              height: 40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.blueAccent,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [

                  InkWell(onTap: () async {
                    await launchUrl(Uri.parse("https://leetcode.com/_Jk1nluv/"));
                  },
                      child: Image.asset(
                        'images/lc.png', height: 30, width: 30,)),
                  InkWell(onTap: () async {
                    await launchUrl(Uri.parse("http://www.linkedin.com/in/panchami-p-kumar-2179932a5"));
                  },
                      child: Image.asset(
                        'images/linkedin.png', height: 30, width: 30,)),
                  InkWell(onTap: () async {
                    await launchUrl(Uri.parse("https://github.com/pxnchxm1"));
                  },
                      child: Image.asset(
                        'images/github.png', height: 30, width: 30,)),
                  InkWell(onTap: () async {
                    await launchUrl(Uri.parse("mailto:pp8978@srmist.edu.in"));
                  },
                      child: Image.asset(
                        'images/email.png', height: 30, width: 30,)),
                  InkWell(onTap: () async {
                    await launchUrl(
                        Uri.parse("https://www.instagram.com/pxnchxmi11?igsh=MTNiYzNiMzkwZA%3D%3D&utm_source=qr"));
                  },
                      child: Image.asset(
                        'images/instagram.png', height: 30, width: 30,)),
                  InkWell(onTap: () async {
                    await launchUrl(
                        Uri.parse("https://auth.geeksforgeeks.org/user/panchxm5xif"));
                  },
                      child: Image.asset(
                        'images/gfg.png', height: 30, width: 30,))
                ],
              ),
            ),
            const SizedBox(width:20),
            Container(
              width: 300,
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.blueAccent,
              ),
              child: ElevatedButton(
                onPressed: (){ launchUrl(Uri.parse("https://drive.google.com/file/d/1rre1t-EvpLty2F-3QTR4OzDDmjGT0dV7/view?usp=drivesdk"));
                },//https://drive.google.com/file/d/1rre1t-EvpLty2F-3QTR4OzDDmjGT0dV7/view?usp=drivesdk
                style:ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.blueAccent),
                ),
                child: SizedBox(

                height: 41,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Icon(Icons.link,
                        size: 20,
                        color: Colors.black),
                    const SizedBox(width: 10),
                    Text(
                      "Resume",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.openSans(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),


                  ],
                ),
              ),)

            ),
          ],
        ),
      ),
      // body: ,
    );
  }

}
