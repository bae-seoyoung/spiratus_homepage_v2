import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'about.dart';
import 'program_retreat.dart';
import 'program_movement.dart';
import 'program_sound.dart';
import 'program_tea.dart';
import 'program_retreat.dart';
import 'contact.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'spiratus',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'spiratus'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // GlobalKey를 사용하여 ScaffoldState에 접근하기 위한 키 생성
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey, // ScaffoldState에 접근하기 위해 키 설정
      extendBodyBehindAppBar: true, // AppBar를 body 영역 뒤로 확장
      appBar: AppBar(
        backgroundColor: Colors.transparent, // 투명한 AppBar 배경색
        elevation: 0, // 그림자 효과 제거
        title: Text(''), // 타이틀을 비워서 공간 차지하지 않게
        leading: Container(), // 좌측 상단에 있는 아이콘을 없애는 부분
        actions: [
            // 아이콘을 추가할 부분
            IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {
                // Drawer를 열기 위해 ScaffoldState의 openDrawer 메서드 호출
                _scaffoldKey.currentState!.openEndDrawer();
              },
            ),
          ],
      ),
      body: Center(
        child: Container(
          width: double.infinity,
          height: double.infinity,
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
                      style: GoogleFonts.ysabeauInfant( // GoogleFonts를 사용하여 Ysabeau Infant 폰트 가져오기
                          fontWeight: FontWeight.w200,
                          fontSize: 40.0,
                          letterSpacing: 20,
                          color: Colors.black,
                          height: 2.0,
                        ),
                    ),
                    Text(
                      'MEDITATION | CONNECTEDNESS | EMBODIMENT',
                      style: GoogleFonts.ysabeauInfant( // GoogleFonts를 사용하여 Ysabeau Infant 폰트 가져오기
                          fontWeight: FontWeight.w200,
                          fontSize: 20.0,
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
      ),
      endDrawer: Drawer(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(0.0),
            bottomRight: Radius.circular(0.0),
            topLeft: Radius.circular(0.0), // 왼쪽 상단 모서리
            bottomLeft: Radius.circular(0.0), // 왼쪽 하단 모서리
          ),
        ),
        child: ListView(
          padding: EdgeInsets.only(top: 200.0), // 여백 추가
          children: [
            ListTile(
              title: Text('ABOUT'),
              onTap: () {
                Navigator.pop(context); // Drawer를 닫음
                  Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AboutPage()),
                );
              },
            ),
           // ExpansionTile로 구현된 하위 메뉴
            ExpansionTile(
              title: Text('PROGRAM'), // '메뉴 항목 2'를 'PROGRAM'으로 변경
              children: [
                // 들여쓰기를 위해 Column 추가
                Padding(
                  padding: const EdgeInsets.only(left:16.0),
                  child: Column(
                  children: [
                    ListTile(
                      title: Text('MOVEMENT'),
                      onTap: () {
                        Navigator.pop(context); // Drawer를 닫음
                         Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => MovementPage()),
                        );
                      },
                    ),
                    ListTile(
                      title: Text('SOUND'),
                      onTap: () {
                        Navigator.pop(context);
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SoundPage()),
                        );
                      },
                    ),
                    ListTile(
                      title: Text('TEA'),
                      onTap: () {
                        Navigator.pop(context);
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => TeaPage()),
                        );
                      },
                    ),
                    ListTile(
                      title: Text('RETREAT'),
                      onTap: () {
                        Navigator.pop(context); // Drawer를 닫음
                        Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => RetreatPage()),
                        );
                      },
                    ),
                  ],
                ),
                )
              ],
            ),
            ListTile(
              title: Text('CONTACT'),
              onTap: () {
                Navigator.pop(context); // Drawer를 닫음
                  Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ContactPage()),
                );
              },
            ),
            // 추가적인 메뉴 항목들을 필요에 따라 추가
          ],
        ),
      ),
    );
  }
}
