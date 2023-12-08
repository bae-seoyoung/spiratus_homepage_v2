import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TeaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent, // 투명한 AppBar 배경색
        toolbarHeight: MediaQuery.of(context).size.height * 0.2,
        elevation: 0, // 그림자 효과 제거
        flexibleSpace: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
            image: AssetImage('assets/main_background.jpg'), // 이미지 파일 경로로 수정
            fit: BoxFit.cover,
            ),
          ),
        ),
      title: Text(
        'TEA',
        style: TextStyle(
          fontWeight: FontWeight.w100,
          fontSize: 30.0,
          letterSpacing: 20,
          color: Colors.black,
        ),
      ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.white,
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.8,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '1:1 / 1:2 PROGRAM',
                      style: GoogleFonts.notoSans(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w100,
                      color: Colors.grey,  
                      height: 2,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 60), // 원하는 간격 조절
                    Text(
                      '차를 우리고 내어주는 순간, 차가 열어주는 명상적인 순간으로 초대합니다.\n고요함과 침묵이 열어주는 시공간안에서\n소란했던 타인의 욕망과 말소리가 씻겨나가고\n진정 자신에게 필요한 것들이 자연스럽게 우러나올 수 있는 시간을 마련합니다.\n자신에게 필요한 것을 마주할 수 있는 고요하고 안전한 시간과 공간으로\n차라는 매개를 통해 진입합니다.',
                      style: GoogleFonts.notoSans(
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