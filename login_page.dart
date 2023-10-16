import 'package:flutter/material.dart';
import 'package:flutter_application_3/components/textfeild.dart';
import 'package:flutter_application_3/pages/main_page.dart';
import 'package:flutter_application_3/pages/calm.dart';


class login_page extends StatefulWidget{
    
    const login_page({
    super.key});

  @override
  State<login_page> createState()  => _login_pageState();
}

class _login_pageState extends State<login_page>{

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

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
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              children: [
                //logo
                const Icon(
                  Icons.message,
                  size: 80,
                  color: Color.fromARGB(255, 51, 98, 135),
                ),
                
                const SizedBox(height: 20,),
                //welcome back
                const Text(
                  'Welcome back !',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                  
                //email
                MyTextField(
                  controller: emailController, 
                  hintText: 'Email', 
                  obscureText: false,
                ),

                SizedBox(height: 20,),
                  
                //password
                MyTextField(
                  controller: passwordController, 
                  hintText: 'Password', 
                  obscureText: true)
                  
                //register now
                 
                  
              ],
                  
            ),
          ),
        ))
    );
  }}