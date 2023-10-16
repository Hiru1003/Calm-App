import 'package:flutter/material.dart';
import 'package:flutter_application_3/pages/main_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_application_3/components/button.dart';

class intro_page extends StatelessWidget{
  const intro_page({super.key, required String title});


  @override
  Widget build(BuildContext context) {
  return  Scaffold( 
    backgroundColor:Color.fromARGB(255, 114, 189, 218),
    body: Padding(
      padding:  const EdgeInsets.all(25.0),
      child: Column(
      children: [
         const SizedBox(height: 45),

      //company name
      Text("MOOD MENTOR", style:GoogleFonts.openSans(
        fontSize: 28,
        fontWeight: FontWeight.bold,
        color: const Color.fromARGB(255, 14, 14, 14),),
      ),

      const SizedBox(height: 25),

      //icon

      Padding(padding: const EdgeInsets.all(50.0),
      child: Image.asset('lib/images/f1.png'),
      ),

      //get started button
       MyButton(
        Greeting: "Get Started",
        onTap: () {  
         Navigator.push(  
            context,  
            MaterialPageRoute(builder: (context) => const main_page()),  
            );  
        }  
       )
      
    ]
    ),
    ),
    ); 
    
  }

}
