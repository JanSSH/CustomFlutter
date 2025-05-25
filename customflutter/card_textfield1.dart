import 'package:customflutter/customflutter/textfield_password.dart';
import 'package:customflutter/customflutter/textfield_username.dart';
import 'package:flutter/material.dart';

class CardTextfield1 extends StatefulWidget {
  const CardTextfield1({super.key});

  @override
  State<CardTextfield1> createState() => _CardTextfield1State();
}

class _CardTextfield1State extends State<CardTextfield1> {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        padding: EdgeInsets.only(top: 40 , bottom: 40),
        decoration: BoxDecoration(
          //borderRadius untuk mengatur borderContainer
          borderRadius: BorderRadius.circular(16),
          color: Colors.yellow,

          //gunakan boxShadow untuk membuat terlihat 3D
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 5,  //mengatur radius blur bayangan
              offset: Offset(0, 5) //mengatur panjang/ukuran/arah bayangan
            ),
          ]
        ),
        child: Column(
          children: [
            Text(
              'Selamat Datang',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
            const SizedBox(height: 30),
            // kalian bisa tambahkan gambar dibawah Text() agar tampilan lebih bagus sesuai keingina kalian

            // TextField bisa kalian ambil dari custom atau bisa kalian bikin sendiri di halaman ini
            //jika ingin membuat halaman textfield disini tinggal copy saja custom textfield tadi disini
            TextfieldUsername(),
            SizedBox(height: 10),
            TextfieldPassword(),
            
            const SizedBox(height: 20),
            ElevatedButton(
              // pada onPressed kalian bisa gunakan plugin Getx agar lebih simpel untuk pindah halaman
                onPressed: (){
                  //Get.to merupakan plugin agar pindah halaman lebih simpel
                  //Get.to(HalamanDituju()); //gunakan Get.back() untuk kembali halaman sebelumnya

                  // Navigator.push sebagai default/bawaan untuk pindah halaman
                  //gunakan Navigator.pop untuk kembali halaman sebelumnya
                  //Navigator.push(context, MaterialPageRoute(builder: (context) => HalamanDituju()"));
                },
                child: Text(
                  'Masuk',
                  // kalian bisa atur sendiri sesuai keinginan pada style
                  style: TextStyle(
                    //fontSize: 20,
                    //fontWeight: FontWeight.bold,
                  ),
                )
            ),
          ],
        ),
    );
  }
}
