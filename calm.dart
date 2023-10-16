import 'package:flutter/material.dart';
import 'package:flutter_application_3/pages/main_page.dart';


class calm_page extends StatefulWidget{
    
    const calm_page({
    super.key});

  @override
  State<calm_page> createState()  => calm_pageState();
}

class calm_pageState extends State<calm_page>{
@override
  Widget build(BuildContext context){
    return  Scaffold(
      backgroundColor: Color.fromARGB(255, 223, 247, 248),
      appBar: AppBar(
      centerTitle: true,
      title: const Text(
        'M O O D M E N D E R',
      ),
      backgroundColor: Color.fromARGB(255, 173, 206, 232),
    ),
    drawer: Drawer(
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: [
          const SizedBox(
            height: 100,
            child: DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 173, 206, 232),
                 ),
              
              child: Text(
                'M E N U', 
                style: TextStyle(
                  color: Colors.black, 
                  fontWeight: FontWeight.bold, 
                  fontSize: 20),
                  ),
              
                
            ),
          ),

          ListTile(
            leading: const Icon(
              Icons.home,
            ),
            title: const Text('DashBoard'),
            onTap: () {  
            Navigator.push(  
            context,  
            MaterialPageRoute(builder: (context) => const main_page()),  
            );  
        }  
          ),

          ListTile(
            leading: const Icon(
              Icons.train,
            ),
            title: const Text('Calm Thoughts'),
            onTap: () {  
            Navigator.push(  
            context,  
            MaterialPageRoute(builder: (context) => const calm_page()),  
            ); 
            },
          ),
          
          
          ListTile(
            leading: const Icon(
              Icons.train,
            ),
            title: const Text('Page 3'),
            onTap: () {  
            Navigator.push(  
            context,  
            MaterialPageRoute(builder: (context) => const main_page()),  
            ); 
            },
          ),
          
          
          ListTile(
            leading: const Icon(
              Icons.train,
            ),
            title: const Text('Page 4'),
            onTap: () {  
            Navigator.push(  
            context,  
            MaterialPageRoute(builder: (context) => const main_page()),  
            ); 
            }
          ),

          
        ],
      ),
    ),
        

      body: SingleChildScrollView(
        child: Column(
        children: [

          //appbar
          const Padding(
            padding:  EdgeInsets.symmetric(horizontal: 25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

            //name
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [


              SizedBox(height: 10,),
              Text(
                'Calm Thoughts',
                  style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              SizedBox(height: 4,),
              Text(
                'This will calm your mind',
                  style: TextStyle(
                  color: Color.fromARGB(255, 122, 122, 122),
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ],
        ),
        ),

      const SizedBox(height: 25,),

        Padding(padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Container(
          padding: const EdgeInsets.all(15),
          decoration: const BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.all(Radius.circular(12.0)),
            ),
            
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             Image.asset('lib/images/c1.png',
             height: 100,),
             const SizedBox(width: 55,),
             Image.asset('lib/images/c2.png',
             height: 100,),
             ],
            ),
                ),
        
              ),

              const SizedBox(height: 25,),

        Padding(padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Container(
          padding: const EdgeInsets.all(15),
          decoration: const BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.all(Radius.circular(12.0)),
            ),
            
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             Image.asset('lib/images/c3.png',
             height: 100,),
             const SizedBox(width: 55,),
             Image.asset('lib/images/c4.png',
             height: 100,),
             ],
            ),
  ),
  ),
const SizedBox(height: 25,),

        Padding(padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Container(
          padding: const EdgeInsets.all(15),
          decoration: const BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.all(Radius.circular(12.0)),
            ),
            
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             Image.asset('lib/images/c5.png',
             height: 100,),
             const SizedBox(width: 55,),
             Image.asset('lib/images/c6.png',
             height: 100,),
             ],
            ),
  ),
  ),

const SizedBox(height: 25,),

        Padding(padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Container(
          padding: const EdgeInsets.all(15),
          decoration: const BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.all(Radius.circular(12.0)),
            ),
            
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             Image.asset('lib/images/c7.png',
             height: 100,),
             const SizedBox(width: 55,),
             Image.asset('lib/images/c8.png',
             height: 100,),
             ],
            ),
  ),
  ),

const SizedBox(height: 25,),

        Padding(padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Container(
          padding: const EdgeInsets.all(15),
          decoration: const BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.all(Radius.circular(12.0)),
            ),
            
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             Image.asset('lib/images/c9.png',
             height: 100,),
             const SizedBox(width: 55,),
             Image.asset('lib/images/c10.png',
             height: 100,),
             ],
            ),
  )
  )


       ] )
  ),
  );
  }
  }
  