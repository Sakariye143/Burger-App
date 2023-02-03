import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'homescren.dart';

class Welcomescreen extends StatelessWidget {
  const Welcomescreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        padding: EdgeInsets.only(top: 100, bottom: 40),
        decoration: BoxDecoration(
          color: Colors.black,
          image: DecorationImage(
            image: AssetImage("images/6.jpg"),
            fit: BoxFit.cover,
            opacity: 0.5
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Shop Burger", style:GoogleFonts.pacifico(
              fontSize: 50,color: Colors.white
            ),),
            Column(
              children: [
                Text("Kusoo dhawow xarunta dhadhanka Burger",
                  style: TextStyle(
                      color: Colors.white.withOpacity(0.8),
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 1
                  ) ,
                ),
                SizedBox(height: 80,),
                Material(
                  color: Color(0xEFF57734),
                    borderRadius: BorderRadius.circular(10),
                  child: InkWell(
                    onTap: (){
                      //Qebtan waxay qabilsantahay marki click lasiyo
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context)=>homescreen(),
                      ));
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 50),
                      child: Text("Get Started",style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                        letterSpacing: 1
                      ),),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
