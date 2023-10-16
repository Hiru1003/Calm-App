import 'package:flutter/material.dart';


class SecondaryButton extends StatelessWidget {
  final String Greeting;
  final void Function()? onTap;
  const SecondaryButton({super.key, required  this.Greeting, required this.onTap});



 @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child:Container(
      padding: const EdgeInsets.all(12),
      width: 150,
      decoration: BoxDecoration(
      color: const Color.fromARGB(255, 158, 202, 237),
      borderRadius: BorderRadius.circular(12),
      
        ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text((Greeting),
            style: TextStyle(color: Color.fromARGB(255, 255, 255, 255),),
          ),


          //icon
        ]
      )
      )
    );
  }
}
