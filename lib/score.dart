
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizzapp/quizz-app.dart';

class Score extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 62, 163, 70),
          title: Text(
            'QuizApp',
            style: GoogleFonts.montserrat(
              fontSize: 30,
              fontWeight: FontWeight.normal,
              color: Colors.white,
            ),
          ),
        ),
        body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Center(
            child: Text('Score:',
                style: GoogleFonts.montserrat(
                    fontSize: 70,
                    fontWeight: FontWeight.w600,
                    color: Colors.black)),
          ),
          Center(
            child: Text('2',
                style: GoogleFonts.montserrat(
                    fontSize: 80,
                    fontWeight: FontWeight.w600,
                    color: const Color.fromARGB(255, 62, 197, 74))),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 50.0, top: 120),
                child: Container(
                  height: 80,
                  width: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(
                      color: Colors.blue,
                      width: 1,
                    ),
                    color: const Color.fromARGB(255, 252, 246, 246),
                  ),
                  child: Center(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Quizz()),
                        );
                      },
                      child: Text(
                        'BACK TO MAIN SCREEN',
                        style: GoogleFonts.montserrat(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: const Color.fromARGB(255, 37, 100, 200),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ]));
  }
}
