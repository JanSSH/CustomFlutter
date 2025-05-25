import 'package:flutter/material.dart';

class TextfieldPassword extends StatefulWidget {
  const TextfieldPassword({super.key});

  @override
  State<TextfieldPassword> createState() => _TextfieldPasswordState();
}

class _TextfieldPasswordState extends State<TextfieldPassword> {
  //buat controller bebas
  TextEditingController passwordController = TextEditingController();

  //gunakan bool '...' untuk menampilkan/hide password
  //kemudian but setState untuk saklar on/off
  bool tampilkanPassword = true;

  //'lihatPassword()' bisa kalian beri nama bebas
  lihatPassword() {
    setState(() {
      // '..' = !'..';
      // 'mengambil dari bool tampilkanPassword tadi (true)' kemudian dibikin reverse untuk mematikan (false) dengan !'..'
      tampilkanPassword = !tampilkanPassword;
    });
  }


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
        // berikan obsecureText untuk fungsi show/hide password
        obscureText: tampilkanPassword,
        controller: passwordController,

        decoration: InputDecoration(
            labelText: 'Password',
            prefixIcon: Icon(Icons.lock),

            //buat IconButton untuk tombol tampil/sembunyikan password
            suffixIcon: IconButton(
              onPressed: (){
                lihatPassword();
              },
              // desain tombol icon
              icon: Icon(
                  color: Colors.blue, //kalian bisa warnai atau hilangkan saja (default)
                  // '..' ? buat icon agar berubah saat dipencet
                  tampilkanPassword ? Icons.visibility_off : Icons.visibility
              ),

            ),
            hintText: 'Masukkan password',
            //gunakan border sesuai keinginan kalian
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
            // gunakan filled untuk memberi warna pada textfield
            // kemudian fillColor untuk memberi warna (Color/Colors...)
            filled: true,
            fillColor: Colors.red.withOpacity(0.5)
        ),
      ),
    );
  }
}
