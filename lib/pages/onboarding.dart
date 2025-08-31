import 'package:flutter/material.dart';
import 'package:rkrj7_news/pages/home_page.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'images/onboard.jpg',
            height: deviceSize.height / 1.6,
            width: deviceSize.width,
            fit: BoxFit.fill,
          ),
          Container(
            margin: EdgeInsets.only(top: deviceSize.height / 1.8),
            width: deviceSize.width,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(30),
                topLeft: Radius.circular(30),
              ),
              color: Colors.grey[300],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text(
                  'Want to be updated with Latest News?\nRKRJ7 News gets you covered!',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Image.asset(
                  'images/newspaper.png',
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomePage()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.white,
                    elevation: 10,
                    fixedSize: Size(deviceSize.width * 0.75, 50),
                  ),
                  child: const Text('Get Started', style: TextStyle(fontSize: 18)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
