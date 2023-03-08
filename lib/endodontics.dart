import 'package:flutter/material.dart';

class Endodontics extends StatelessWidget {
  final bool isSwitch;
  const Endodontics({Key? key, required this.isSwitch}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        primaryColor: Colors.black,
        colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.white),
        scaffoldBackgroundColor: isSwitch ? Colors.white10 : Colors.blue[200] ,
        appBarTheme: AppBarTheme(
          color:
          isSwitch ? Colors.white10: Colors.blue, // set the color property to the desired color value
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: Text(
            "Endodontics",
            style: TextStyle(color: isSwitch ? Colors.white:  Colors.black),
          ),
        ),
        body: SafeArea(
          child: Container(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: <Widget>[
                Container(
                  width: double.infinity,
                  height: 250,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: const DecorationImage(
                          image: AssetImage('assets/images/Endodontics.jpg'),
                          fit: BoxFit.cover)),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: LinearGradient(
                            begin: Alignment.bottomRight,
                            colors: [
                              Colors.black.withOpacity(.4),
                              Colors.black.withOpacity(.2),
                            ])),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        const Text(
                          "Endodontics",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            // Add your button onPressed logic here
                          },
                          style: ElevatedButton.styleFrom(
                            elevation: 4,
                            backgroundColor: isSwitch ? Colors.black: Colors.blue[800],
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: const SizedBox(
                            width: 200, // Set the desired width here
                            child: SizedBox(
                              height: 50,
                              child: Center(
                                child: Text(
                                  "Book an Appointment Now",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                 Text("Endodontics is a specialized field of dentistry that focuses on treating dental problems related to the innermost part of the tooth, known as the pulp. One of the most common endodontic procedures is root canal treatment, which is used to treat infection or inflammation in the pulp. Contrary to popular belief, root canal treatment is not a painful procedure and can save a tooth that would otherwise need to be extracted. During the procedure, the dentist removes the infected or damaged pulp, cleans the area, and seals it with a filling or crown.",
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontWeight: FontWeight.bold, color: isSwitch ? Colors.white:  Colors.black, fontSize: 18),),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
