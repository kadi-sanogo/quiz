
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizzapp/score.dart';

class Detailedview extends StatefulWidget {
  @override
  _DetailedviewState createState() => _DetailedviewState();
}

class _DetailedviewState extends State<Detailedview> {
  Color containerColor = const Color.fromARGB(255, 253, 247, 247);

  void _changeColor(bool isTrue) {
    setState(() {
      containerColor = isTrue ? Colors.green : Colors.red;
    });

    Future.delayed(Duration(seconds: 2), () {
      setState(() {
        containerColor = const Color.fromARGB(255, 253, 247, 247);
      });
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Score()),
      );
    });
  }

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
      body: Center(
        child: Column(
          children: [
            Container(
              height: 220,
              width: 395,
              decoration: BoxDecoration(
                color: Colors.black,
                image: DecorationImage(
                    image: AssetImage('assets/images/music.png'),
                    fit: BoxFit.cover),
              ),
            ),
            Container(
              height: 483,
              width: 395,
              decoration: BoxDecoration(
                color: containerColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Stack(
                children: [
                  Positioned(
                    top: 60,
                    left: 50,
                    child: Text(
                      'Is this the real life?',
                      style: GoogleFonts.montserrat(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 90,
                    left: 50,
                    child: Text(
                      'Is this just fantasy?',
                      style: GoogleFonts.montserrat(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 200,
                    left: 40,
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () => _changeColor(true),
                          child: Container(
                            height: 70,
                            width: 150,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: const Color.fromARGB(255, 10, 106, 223),
                            ),
                            child: Center(
                              child: Text(
                                'True',
                                style: GoogleFonts.montserrat(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        GestureDetector(
                          onTap: () => _changeColor(false),
                          child: Container(
                            height: 70,
                            width: 150,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: const Color.fromARGB(255, 234, 49, 7),
                            ),
                            child: Center(
                              child: Text(
                                'False',
                                style: GoogleFonts.montserrat(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
