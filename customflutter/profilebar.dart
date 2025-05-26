import 'package:flutter/material.dart';

class Profilebar extends StatefulWidget {
  const Profilebar({super.key});

  @override
  State<Profilebar> createState() => _ProfilebarState();
}

class _ProfilebarState extends State<Profilebar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 4,
            offset: Offset(0, 5)
          )
        ],
        color: Colors.yellow,
      ),
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // CircleAvatar bisa kalian gunakan Images untuk foto profile (disini contoh menggunakan Icon)
          CircleAvatar(
            radius: 50,
            child: Icon(
              Icons.person,
              size: 50,
            ),
          ),
          const SizedBox(width: 10),
          Container(
            width: 220,
            margin: EdgeInsets.symmetric(vertical: 10),
            //gunakan warna untuk cek ukuran
            //color: Colors.green,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Ambil ($...) dari username login atau terserah
                Text(
                  'Drupadi Wakanto',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text('Email@gmail.com'),

                // Pembatas
                Divider(
                  color: Colors.transparent,
                ),

                // Text(Bio)
                Text(
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  softWrap: true,
                  'Lorem ipsum dolor sit amet blablabalbalbalbal',
                  style: TextStyle(

                  ),
                ),
              ],
            ),
          ),
        ],
      )
    );
  }
}
