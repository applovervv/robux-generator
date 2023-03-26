import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
                '로벅스 수량',
                style: TextStyle(color: Colors.white, fontSize: 50),
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                width: 250,
                height: 70,
                child: ElevatedButton(
                  onPressed: () {
                    print('clicked');
                  },
                  child: Text(
                    '1000',
                    style: TextStyle(color: Colors.white, fontSize: 24),
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
              SizedBox(
                height: 50,
              ),
              Container(
                width: 250,
                height: 70,
                child: ElevatedButton(
                  onPressed: () {
                    print('clicked');
                  },
                  child: Text(
                    '3000',
                    style: TextStyle(color: Colors.white, fontSize: 24),
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
              SizedBox(
                height: 50,
              ),
              Container(
                width: 250,
                height: 70,
                child: ElevatedButton(
                  onPressed: () {
                    print('clicked');
                  },
                  child: Text(
                    '5000',
                    style: TextStyle(color: Colors.white, fontSize: 24),
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
