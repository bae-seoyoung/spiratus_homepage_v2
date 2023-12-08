import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SoundPage extends StatelessWidget {
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
        'SOUND',
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
                      '자체 개발한 소리 프로그램 <보이스 콜라주>는 매 순간에 현존하는 힘에서 시작하여\n판단없이 소리를 대하고, 이를 통해 소리 즉흥까지 나아가는 프로그램입니다.\n소리를 만드는 과정에서 세밀한 몸의 감각을 익히고,\n내가 만들어 낸 소리에 대한 판단없음을 통해 소리를 있는 그대로 대하고 감각합니다.\n그렇게 만난 소리는 다만 재료가 되어, 하나의 풍경을 만드는 요소가 됩니다.\n이 때 소리 안에서 자유로움을 경험하며,\n어떤 순간에도 나 자신으로 존재하는 힘, 애씀없는 존재의 조화로움에 대한 감각이 길러집니다.',
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
            Container(
              color: Colors.blueGrey,
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.8,
              child: Stack(
                children: [
                  Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '구성요소',
                          style: GoogleFonts.notoSans(
                            fontWeight: FontWeight.w200,
                            fontSize: 40.0,
                            letterSpacing: 20,
                            color: Colors.black,
                            height: 2.0,
                          ),
                        ),
                        Text(
                          '아래 요소를 상황과 주제에 맞게 배치합니다.',
                          style: GoogleFonts.notoSans(
                            fontWeight: FontWeight.w100,
                            fontSize: 20.0,
                            letterSpacing: 1.0,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(height: 30), // 원하는 간격 조절
                        Text(
                          '명상 / 호흡(Pranayama) / 소리 / 움직임',
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
           ],
        ),
      ),
      );
  }
}