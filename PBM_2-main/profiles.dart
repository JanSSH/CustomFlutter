import 'package:flutter/material.dart';

class profiles extends StatelessWidget {
  const profiles ({super.key, required this.email});

  final String email;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFB2EBF2),
      ),

      body: SafeArea(
        child: Column(
          children: [

            const SizedBox(height: 20),

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

              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    child: CircleAvatar(
                      radius: 50,
                      child: Icon(
                          Icons.person,
                          size: 50,
                          color: Colors.white
                      ),
                    ),
                  ),

                  const SizedBox(width: 20),

                  Align(
                    alignment: Alignment.topLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              'Profile ',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),

                          ],
                        ),

                        Text(
                          '$email',
                          style: TextStyle(
                            fontSize: 17,
                          ),
                        ),

                        SizedBox(
                          width: 130,
                          child: Divider(
                            height: 20,
                            thickness: 2,
                            color: Colors.black,
                          ),
                        ),

                        Text(
                          'Selamat Datang',
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),

                      ],
                    ),
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
