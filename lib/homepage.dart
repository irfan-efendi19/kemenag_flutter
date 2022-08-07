import 'package:aplikasi_haji/kartulayanan/layanan_1.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: Container(
          color: Color(0xFF2C3E50),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20),
            child: GNav(
              color: Colors.white,
              backgroundColor: Color(0xFF2C3E50),
              activeColor: Colors.white,
              tabBackgroundColor: Color(0xFF576574),
              gap: 8,
              padding: EdgeInsets.all(18),
              tabs: const [
                GButton(
                  icon: Icons.home,
                  text: 'Beranda',
                ),
                GButton(
                  icon: Icons.compass_calibration,
                  text: 'Arah Kiblat',
                ),
                GButton(
                  icon: Icons.call,
                  text: 'Kontak Kami',
                ),
              ],
            ),
          ),
        ),
        backgroundColor: Color(0xFF2ED573),
        //area scroll view
        body: SingleChildScrollView(
          child: Column(children: [
            SizedBox(height: 25),
            //appbar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Row(
                mainAxisAlignment:
                    MainAxisAlignment.spaceBetween, // rata tengah
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Assalamualaikum',
                      ),
                      Text(
                        'User',
                        style: TextStyle(
                            fontSize: 27, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),

                  //photo profil
                  Container(
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12)),
                      child: Icon(Icons.person))
                ],
              ),
            ),

            SizedBox(
              height: 25,
            ),
            //KARTU ATAS
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                padding: EdgeInsets.all(25),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12)),
                child: Row(
                  children: [
                    //CHARAKTER
                    Container(
                      child: Image.asset('assets/icbanner_makkah.png'),
                      height: 100,
                      width: 100,
                    ),
                    SizedBox(
                      width: 20,
                    ),

                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('YUK HAJI',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20)),
                          SizedBox(height: 10),
                          Text('Cek Keberangkatan Haji Semakin Mudah'),
                          SizedBox(height: 10),
                          Container(
                            padding: EdgeInsets.all(7),
                            decoration: BoxDecoration(
                                color: Color(0xFFC4E538),
                                borderRadius: BorderRadius.circular(12)),
                            child: Center(child: Text('Mulai')),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 25),

            //searchbar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                padding: EdgeInsets.all(7),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12)),
                child: TextField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      border: InputBorder.none,
                      hintText: 'Apa yang bisa KEMENAG bantu?'),
                ),
              ),
            ),
            SizedBox(height: 25),
            //kartu layanan
            Container(
              height: 80,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  layanan_1(
                    ikon: 'assets/ppiu.png',
                    categoryName: 'Data PPIU',
                  ),
                  layanan_1(
                    ikon: 'assets/pihk.png',
                    categoryName: 'Data PIHK',
                  ),
                  layanan_1(
                    ikon: 'assets/hajipintar.png',
                    categoryName: 'Haji Pintar',
                  ),
                  layanan_1(
                    ikon: 'assets/umrahpintar.png',
                    categoryName: 'Umrah Cerdas',
                  ),
                ],
              ),
            ),
            //BOTTOM
            SizedBox(height: 25),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Semua Layanan Kami',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                  ),
                  Text('Lihat Lainnya')
                ],
              ),
            ),
            SizedBox(height: 25),
            //menu semuanya
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  itemMenu(
                    iconMenu: 'assets/hajiumroh.png',
                    namaMenu: 'Haji & Umroh',
                  ),
                  itemMenu(
                    iconMenu: 'assets/KUA.png',
                    namaMenu: 'KUA',
                  ),
                  itemMenu(
                    iconMenu: 'assets/pendidikan.png',
                    namaMenu: 'Pendidikan ',
                  ),
                  itemMenu(
                    iconMenu: 'assets/halal.png',
                    namaMenu: 'Produk Halal',
                  ),
                ],
              ),
            ),
            SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  itemMenu(
                    iconMenu: 'assets/pesantren.png',
                    namaMenu: 'Pesantren',
                  ),
                  itemMenu(
                    iconMenu: 'assets/madrasah.png',
                    namaMenu: 'Madrasah',
                  ),
                  itemMenu(
                    iconMenu: 'assets/ptk.png',
                    namaMenu: 'PTK Distis',
                  ),
                  itemMenu(
                    iconMenu: 'assets/riset.png',
                    namaMenu: 'Riset',
                  ),
                ],
              ),
            ),
            SizedBox(height: 25),
          ]),
        ));
  }
}

class itemMenu extends StatelessWidget {
  itemMenu({
    Key? key,
    required this.iconMenu,
    required this.namaMenu,
  }) : super(key: key);

  final iconMenu;
  final String namaMenu;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 50,
          height: 50,
          child: Image.asset(iconMenu),
        ),
        SizedBox(height: 10),
        Text(namaMenu)
      ],
    );
  }
}
