import 'package:flutter/material.dart';

class loginscreen extends StatelessWidget {
  loginscreen ({super.key});

  final TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: const Color(0xFFB2EBF2),
      body: SafeArea(
        child: Column(
          children: [

            const SizedBox(height: 140),

            const Text(
              'Tugas\n'
                  'Pemrograman Berbasis Mobile',
              style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),

            SizedBox(height: 40),

            Container(
              margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 30),
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.9),
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 10,
                    offset: Offset(0, 8),
                  ),
                ],
              ),

              child: Column(
                children: [
                  const Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold
                    ),
                  ),

                  Container(
                    padding: EdgeInsets.all(10),
                    width: double.infinity,
                  ),

                  SizedBox(height: 30),

                  TextField(
                    controller: emailController,
                    decoration: InputDecoration(
                      labelText: 'Email',
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                      filled: true,
                      fillColor: Colors.white,
                    ),
                  ),

                  const SizedBox(height: 20),

                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Password',
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                      filled: true,
                      fillColor: Colors.white,
                    ),
                  ),

                  const SizedBox(height: 20),

                  ElevatedButton(
                      onPressed: (){
                        String email = emailController.text;
                        if (email.isNotEmpty) {
                          Navigator.pushNamed(context, '/profiles', arguments: email);
                        }
                      },
                    child: Text('Masuk'),
                    
                  ),


                ],
              ),
            ),

            Text(
              'Januar Dwi Putra\n'
                  '230101054',
              style: TextStyle(
                fontSize: 15,
              ),
              textAlign: TextAlign.center,
            ),

          ],
        ),

      ),


    );
  }
}
