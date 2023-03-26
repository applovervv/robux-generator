import 'package:flutter/material.dart';
import 'result.dart';
import 'package:simple_progress_indicators/simple_progress_indicators.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  String progress = '생성 준비중..';
  updateProgress(String text) {
    setState(() {
      progress = text;
    });
  }

  @override
  void initState() {
    Future.delayed(Duration(seconds: 4)).then((value) {
      updateProgress('로블록스 시스템 분석중..');
    });
    Future.delayed(Duration(seconds: 6)).then((value) {
      updateProgress('로벅스 불러오는중..');
    });
    Future.delayed(Duration(seconds: 9)).then((value) {
      updateProgress('거의 다 되었습니다..');
    });
    Future.delayed(Duration(seconds: 12)).then((value) {
      updateProgress('마지막 단계 완료중..');
    });
    Future.delayed(Duration(seconds: 16)).then((value) {
      updateProgress('생성 완료');
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => Result()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final String backgroundPath = 'assets/background_menu.png';

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(backgroundPath),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Container(
            padding: EdgeInsets.all(12),
            width: 350,
            height: 225,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                width: 2,
                color: Colors.white,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  '$progress',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                ProgressBarAnimation(
                  width: 300,
                  duration: const Duration(seconds: 16),
                  gradient: const LinearGradient(
                    colors: [
                      Colors.white,
                      Color.fromARGB(255, 239, 154, 154),
                      Colors.red,
                    ],
                  ),
                  backgroundColor: Colors.grey.withOpacity(0.4),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
