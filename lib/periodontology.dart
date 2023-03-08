import 'package:flutter/material.dart';

class Periodontology extends StatelessWidget {
  final bool isSwitch;
  const Periodontology({Key? key, required this.isSwitch}) : super(key: key);

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
            "Periodontology",
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
                          image: AssetImage('assets/images/Periodontology.jpg'),
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
                          "Periodontology",
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
                Text("Periodontology is a dental specialty focused on the prevention, diagnosis, and treatment of periodontal disease, which affects the gums and surrounding tissues that support the teeth. The goal of periodontal treatment is to clean the pockets around the teeth thoroughly, remove plaque and tartar buildup, and prevent damage to the gums and bone. Successful treatment requires daily oral care, management of underlying health conditions that can impact dental health, and cessation of tobacco use. Regular periodontal check-ups and cleanings can help prevent the development of periodontal disease and maintain good oral health.",
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
