import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'menu.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class Info {
  static int? robuxAmount;
  static String? name;
}

class _HomeState extends State<Home> {
  final UserNameController = TextEditingController(text: '');
  final AmountCountroller = TextEditingController(text: '500');

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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                '로블록스 아이디',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                width: 300,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(60),
                ),
                child: TextField(
                  style: TextStyle(
                    fontSize: 17,
                  ),
                  controller: UserNameController,
                  decoration: InputDecoration(
                    hintStyle: TextStyle(
                      fontSize: 15,
                    ),
                    hintText: '입력해주세요',
                    contentPadding: EdgeInsets.all(14),
                    border: InputBorder.none,
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                '로벅스 수량',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                width: 300,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(60),
                ),
                child: TextField(
                  style: TextStyle(
                    fontSize: 17,
                  ),
                  controller: AmountCountroller,
                  keyboardType: TextInputType.number,
                  inputFormatters: <TextInputFormatter>[
                    LengthLimitingTextInputFormatter(5),
                    FilteringTextInputFormatter.digitsOnly,
                  ],
                  decoration: InputDecoration(
                    hintStyle: TextStyle(
                      fontSize: 15,
                    ),
                    hintText: '입력해주세요',
                    contentPadding: EdgeInsets.all(14),
                    border: InputBorder.none,
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                width: 250,
                height: 70,
                child: ElevatedButton(
                  onPressed: () {
                    Info.name = UserNameController.text;
                    Info.robuxAmount = int.parse(AmountCountroller.text);

                    Navigator.pop(context);
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Menu()));
                  },
                  child: Text(
                    '생성하기',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 24),
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
    );
  }
}
