import 'package:flutter/material.dart';
import 'package:flutter_application_3/components/secondarybutton.dart';
import 'package:flutter_application_3/pages/calm.dart';
import 'package:flutter_application_3/util/calmthoughts.dart';
import 'package:flutter_application_3/util/category.dart';
import 'package:flutter_application_3/pages/login_page.dart';


class main_page extends StatefulWidget{
    
    const main_page({
    super.key});

  @override
  State<main_page> createState()  => main_pageState();
}

class main_pageState extends State<main_page>{
@override
  Widget build(BuildContext context){
    return  Scaffold(
      backgroundColor: const Color.fromARGB(255, 223, 247, 248),
      appBar: AppBar(
      centerTitle: true,
      title: const Text(
        'M O O D M E N D E R',
      ),
      backgroundColor: const Color.fromARGB(255, 173, 206, 232),
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
            title: const Text('Messaging'),
            onTap: () {  
            Navigator.push(  
            context,  
            MaterialPageRoute(builder: (context) => const login_page()),  
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
                'Hello Friend !',
                  style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              SizedBox(height: 4,),
              Text(
                'Welcome to the Mood Mender',
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
            color: Color.fromARGB(255, 123, 187, 240),
            borderRadius: BorderRadius.all(Radius.circular(12.0)),
            ),
            
          child: Row(
            children: [
             Image.asset('lib/images/doctor.png',
             height: 100,),

              const SizedBox(width: 25,),

              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'How do you feel?',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                      ),
                    const SizedBox(height: 12,),
                    const Text(
                      'Lets talk about your day..',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                      ),
                      const SizedBox(height: 12,),
                    
                    SecondaryButton(
                    Greeting: "Get Started",
                    onTap: () {  
                    Navigator.push(  
                    context,  
                    MaterialPageRoute(builder: (context) => const main_page()),  
                    );  
        }  
       )
              
                  ],
                ),
              )
            ],
          ),
        ),
        ),
          //how do you feel


          const SizedBox(height: 25,),

          //searchbar
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Container(
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 160, 200, 234),
                borderRadius: BorderRadius.all(Radius.circular(12.0)),
                ),
                child: const TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    border: InputBorder.none,
                    hintText: 'How Can We Help You?',
                    ),
                  ),
             
            ),
          ),


          //listview
          const SizedBox(height: 25,),

          Container(
            height: 80,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                catergory(
                  onTap: () {
                    Navigator.push(  
                    context,  
                    MaterialPageRoute(builder: (context) => const main_page()),  
                  ); 
                  },
                  categoryName: 'Self Assess',
                  imagepath: 'lib/images/m1.png',
                ),
                catergory(
                  onTap: () {
                    Navigator.push(  
                    context,  
                    MaterialPageRoute(builder: (context) => const main_page()),  
                  ); 
                  },
                  categoryName: 'Wellness',
                  imagepath: 'lib/images/m2.png',
                ),
                catergory(
                  onTap: () {
                    Navigator.push(  
                    context,  
                    MaterialPageRoute(builder: (context) => const main_page()),  
                  ); 
                  },
                  categoryName: 'Journaling',
                  imagepath: 'lib/images/m3.png',
                ),
                catergory(
                  onTap: () {
                    Navigator.push(  
                    context,  
                    MaterialPageRoute(builder: (context) => const main_page()),  
                  ); 
                  },
                  categoryName: 'Mind Relaxing',
                  imagepath: 'lib/images/m4.png',
                ),
              ],
            ),
          ),

          const SizedBox(height: 35,),
          //list
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              mainAxisAlignment:MainAxisAlignment.spaceBetween,
              children: [
                Text('Calm Thoughts',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
                ),
               Icon(
                Icons.arrow_circle_right,
                ),
              ],
            ),
            ),


            const SizedBox(height: 10,),
            Container(
            height: 200,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                calm(
                  imagepath: 'lib/images/c1.png',
                ),
                calm(
                  imagepath: 'lib/images/c2.png',
                ),
                calm(
                  imagepath: 'lib/images/c3.png',
                ),
                calm(
                  imagepath: 'lib/images/c4.png',
                ),
              ],
            ),
          ),









          
            
        ],
      ),
    ),
        
    );
  }
}