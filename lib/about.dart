import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent, // 투명한 AppBar 배경색
        elevation: 0, // 그림자 효과 제거
        title: Text(''), // 타이틀을 비워서 공간 차지하지 않게
        ),
       body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.white,
              width: double.infinity,
              height: MediaQuery.of(context).size.height,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '내 속에서 솟아 나오려는 것 바로 그것을 나는 살아보려고 했다.\n왜 그것이 그토록 어려웠을까',
                      style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,  
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 20),
                     Text(
                      '헤르만 헤세',
                      style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,  
                      ),
                      textAlign: TextAlign.center,
                    ),
                    // 추가적인 텍스트 또는 위젯을 여기에 추가할 수 있습니다.
                  ],
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height,
              child: Stack(
                children: [
                  Image.asset(
                    'assets/main_background.jpg',
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: double.infinity,
                  ),
                  Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'SPIRATUS',
                          style: GoogleFonts.ysabeauInfant(
                            fontWeight: FontWeight.w200,
                            fontSize: 40.0,
                            letterSpacing: 20,
                            color: Colors.black,
                            height: 2.0,
                          ),
                        ),
                        Text(
                          'MEDITATION | CONNECTEDNESS | EMBODIMENT',
                          style: GoogleFonts.ysabeauInfant(
                            fontWeight: FontWeight.w200,
                            fontSize: 20.0,
                            letterSpacing: 1.0,
                            color: Colors.black,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 30), // 원하는 간격 조절
                        Text(
                          '스피라투스는 영성, 예술, 철학을 통해\n내면에서부터 시작된 주체적인 삶을 위한 자원을 제공합니다.',
                            style: GoogleFonts.notoSans(
                            fontWeight: FontWeight.w100,
                            fontSize: 15.0,
                            letterSpacing: 1.0,
                            color: Colors.black,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.white,
              width: double.infinity,
              height: MediaQuery.of(context).size.height,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '나와 나의 연결성\n나와 너의 연결성\n나와 세상의 연결성의\n회복을 돕는 프로그램을 개발 및 기획, 진행합니다',
                      style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w100,
                      color: Colors.black,
                      height: 2,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    // 추가적인 텍스트 또는 위젯을 여기에 추가할 수 있습니다.
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


