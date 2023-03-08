import 'package:flutter/material.dart';

class Fillings extends StatelessWidget {
  final bool isSwitch;
  const Fillings({Key? key,required this.isSwitch}) : super(key: key);

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
            "Dental Fillings",
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
                          image: AssetImage('assets/images/Dental_Fillings.jpg'),
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
                          "Dental Fillings",
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
                 Text("A dental filling is a common procedure used to fill a cavity or hole in a tooth caused by decay, wear, or trauma. It involves removing the damaged or decayed portion of the tooth and filling the area with a material such as composite resin, porcelain, or amalgam. Fillings help to prevent further damage to the tooth and restore its strength and function. If left untreated, a cavity can lead to more serious dental problems, such as infection or even tooth loss.",
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
