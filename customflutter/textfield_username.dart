import 'package:flutter/material.dart';

class TextfieldUsername extends StatefulWidget {
  const TextfieldUsername({super.key});

  @override
  State<TextfieldUsername> createState() => _TextfieldUsernameState();
}

class _TextfieldUsernameState extends State<TextfieldUsername> {
  //'usernameController' bisa kalian ganti bebas untuk inisiasi mengambil inputan textfield
  TextEditingController usernameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      //padding/margin untuk mengatur container textfield sesuai keinginan
      margin: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        //gunakan warna untuk mengecek ukuran container
        //color: Colors.blue,
      ),
      child: TextField(
        controller: usernameController,
        decoration: InputDecoration(
          labelText: 'Email',
          prefixIcon: Icon(Icons.email),
          hintText: 'Masukkan email',
          //gunakan border sesuai keinginan kalian
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
          // gunakan filled untuk memberi warna pada textfield
            // kemudian fillColor untuk memberi warna (Color/Colors...)
          filled: true,
          fillColor: Colors.yellow.withOpacity(0.5)

        ),
      ),
    );
  }
}
