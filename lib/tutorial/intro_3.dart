import 'package:flutter/material.dart';

class intro_3 extends StatelessWidget {
  const intro_3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFFBE2EDD),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: Image.asset('assets/t_infor.png'),
            height: 300,
            width: 300,
          ),
          SizedBox(height: 100),
          Text(
            'Update Informasi Publik',
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ],
      ),
    );
  }
}
