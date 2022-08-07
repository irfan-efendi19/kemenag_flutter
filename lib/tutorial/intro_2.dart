import 'package:flutter/material.dart';

class intro_2 extends StatelessWidget {
  const intro_2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFFB8E994),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: Image.asset('assets/logohalal.png'),
            height: 400,
            width: 500,
          ),
          Text('Cek Daftar Produk Halal\nYang Terdaftar KEMENAG',
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
        ],
      ),
    );
  }
}
