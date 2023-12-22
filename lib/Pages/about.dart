import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Center(
        child: Flexible(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Flexible(
                child: Hero(
                  tag: "photo",
                  child: Container(
                    height: 300,
                    width: 300,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.blue,
                            offset: Offset(0, 0),
                            blurRadius: 5,
                            spreadRadius: 5,
                          )
                        ],
                        image: DecorationImage(
                            image: AssetImage('images/mypic.png'))),
                  ),
                ),
              ),
              const SizedBox(
                width: 200,
              ),
              SizedBox(
                width: 300,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Student at SRM",
                      style: GoogleFonts.openSans(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          color: Colors.black),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Passionate learner! like to create memorable experience through coding skills and creativity. With a background in python programming language and keen eye for detail, i aim to craft visually compelling solutions that resonate with the users of my outcome. I am highly motivated, consistent and a hardworking student with a good knack of problem solving skills. I solved 100+ problems on leetcode.I wish to continue being a great learner.",
                      style: GoogleFonts.openSans(
                          fontSize: 15, color: Colors.white,),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          width: 300,
          height: 40,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: (){Navigator.pushNamed(context, '/homepage');}, child: SizedBox(
                height: 41,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Icon(Icons.arrow_back_ios,
                        size: 20,
                        color: Colors.black),
                    const SizedBox(width: 10),
                    Text(
                      "Back",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.openSans(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),


                  ],
                ),
              ),)
            ],
          ),
        ),
      ),
    );
  }
}
