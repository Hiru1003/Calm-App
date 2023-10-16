import 'package:flutter/material.dart';

class calm extends StatelessWidget{
    final imagepath;


calm({
  required this.imagepath,

});

@override
  Widget build(BuildContext context){
    return   Container(
                padding: EdgeInsets.all(20),
                
                child: Center(
                  child: Column(
                    children: [
                      Image.asset(
                        imagepath,
                        height: 120,
                      ),
                      
                    ],
                  ),
                ),
              );
      
}}