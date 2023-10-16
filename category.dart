import 'package:flutter/material.dart';

class catergory extends StatelessWidget{
    final imagepath;
    final void Function()? onTap;
    final String categoryName;

catergory({
  required this.imagepath,
  required this.onTap,
  required this.categoryName,
});

@override
  Widget build(BuildContext context){
    return  Padding(
      padding: const EdgeInsets.only(left: 25),
      child: GestureDetector(
        
          onTap: onTap,
        child: Container(
          
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: const Color.fromARGB(255, 181, 230, 244),
            ),
          
          child: Row(
            children: [
              Image.asset(
                imagepath,
                height: 60,
              ),
              const SizedBox(width: 20,),
               Text(categoryName),
            ],
          ),
        ),
      ),
    );
  }
}