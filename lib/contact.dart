import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactPage extends StatelessWidget {
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
        'CONTACT',
        style: TextStyle(
          fontWeight: FontWeight.w100,
          fontSize: 30.0,
          letterSpacing: 20,
          color: Colors.black,
        ),
      ),
      ),
      body: SingleChildScrollView( // 스크롤을 추가하는 부분
        child: Padding(
          padding: const EdgeInsets.all(150.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '이름(소속):',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Your Name',
                ),
              ),
              SizedBox(height: 16.0),
              Text(
                '메일 주소:',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  hintText: 'Your Email Address',
                ),
              ),
              SizedBox(height: 16.0),
              Text(
                '문의 사항:',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: 100.0, // 원하는 높이를 설정
                ),
                child: TextField(
                  maxLines: null, // 필요한 만큼 자동으로 높아짐
                  keyboardType: TextInputType.multiline,
                  decoration: InputDecoration(
                    hintText: 'Your Message',
                  ),
                ),
              ),
            ),
              SizedBox(height: 32.0), // 추가된 여백
              Center( // 버튼을 화면 중앙에 정렬
                child: ElevatedButton(
                  onPressed: () {
                    _sendEmail(context);
                  },
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 20.0), // 버튼 크기 조절
                    shape: RoundedRectangleBorder( // 각지게 모양을 위해 RoundedRectangleBorder 사용
                    borderRadius: BorderRadius.circular(3.0), // 버튼의 각지기 정도를 조절
                    ),
                    elevation: 0, // 그림자 효과 제거
                    primary: Color.fromARGB(255, 150, 193, 199), // 버튼 배경색 설정
                    onPrimary: Color.fromARGB(255, 0, 0, 0), // 텍스트 색상 설정
                  ),
                  child: Text('메일 전송'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
  // 메일 보내기 함수
  _sendEmail(BuildContext context) async {
    final Uri _emailLaunchUri = Uri(
      scheme: 'mailto',
      path: 'hello@spiratus.org', // 받는 이메일 주소를 입력하세요.
      queryParameters: {
        'subject': 'Contact Us', // 이메일 제목을 입력하세요.
        'body': 'Name: \nEmail: \nMessage: ', // 이메일 내용을 입력하세요.
      },
    );
    
    try {
      await launch(_emailLaunchUri.toString());
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Failed to open email app.'),
        ),
      );
    }
  }

}

