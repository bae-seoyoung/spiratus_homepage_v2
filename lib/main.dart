import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
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
      );
  }
}
