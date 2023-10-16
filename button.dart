import 'package:flutter/material.dart';


class MyButton extends StatelessWidget {
  final String Greeting;
  final void Function()? onTap;
  const MyButton({super.key, required  this.Greeting, required this.onTap});



 @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child:Container(
      decoration: BoxDecoration(
        color:const Color.fromARGB(255, 169, 215, 228),
        borderRadius: BorderRadius.circular(40)
        ),
      padding: const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text((Greeting),
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),


          //icon
          Icon(
            Icons.arrow_forward,
            color: Colors.black,
          )
      ],
      )
      )
    );
  }
}
