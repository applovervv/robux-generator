import 'package:flutter/material.dart';
import 'home.dart';
import 'dart:math';

class Result extends StatefulWidget {
  const Result({super.key});

  @override
  State<Result> createState() => _ResultState();
}

var msgList = [
  '로벅스를 생성하던 도중\n로벅스가 산산조각 났습니다.',
  '로벅스를 운반하던 중에\n로벅스가 용암에 빠졌습니다.',
  '로벅스 배달원이 당신의 로벅스를 가로챘습니다.',
  '로벅스가 굉음과 함께 폭파당했습니다.',
  '로벅스가 물에 빠졌습니다.',
  '로벅스가 세계 밖으로 떨어졌습니다.',
  '로벅스가 번개를 맞고 소멸했습니다.',
  '로벅스가 불에 타버렸습니다.',
  '로벅스가 어딘가로 순간이동했습니다.',
  '로벅스 배달원이 당신의 로벅스를 먹었습니다.',
  '로벅스 배달원이 해고당했습니다.',
  '로벅스 배달원이 길을 잃었습니다.',
  '로벅스 배달원이 사직서를 썼습니다.',
  '로벅스 배달원이 도망갔습니다.',
];

final _random = new Random();
var Message = msgList[_random.nextInt(msgList.length)];

class _ResultState extends State<Result> {
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
            padding: EdgeInsets.all(10),
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
                  '어?\n$Message',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                    color: Colors.yellowAccent,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  width: 140,
                  height: 60,
                  child: ElevatedButton(
                    onPressed: () {
                      print(0);
                    },
                    child: Text(
                      '네?',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 24),
                      textAlign: TextAlign.center,
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      minimumSize: Size(200, 50),
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(60),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
