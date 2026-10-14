import 'package:flutter/material.dart';
import 'package:flutter_real_estate/homepage.dart';
import 'package:flutter_real_estate/loginpage.dart';

class OnBoard1 extends StatefulWidget {
  const OnBoard1({super.key});

  @override
  State<OnBoard1> createState() => _OnBoard1State();
}

class _OnBoard1State extends State<OnBoard1> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: .center,
          children: [
            Padding(
              padding: const EdgeInsetsGeometry.only(top: 20, right: 20),
              child: Align(
                alignment: AlignmentGeometry.topRight,
                child: TextButton(
                  onPressed: () {
                    Navigator.of(
                      context,
                    ).push(MaterialPageRoute(builder: (context) => HomePage()));
                  },
                  child: Text(
                    'Skip',
                    style: TextStyle(fontSize: 19, color: Colors.black),
                  ),
                ),
              ),
            ),
            SizedBox(height: height * 0.15),
            Text(
              'List your property!',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 23, fontWeight: .bold),
            ),
            SizedBox(height: height * 0.05),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Get Verified buyers for your property'
                ' With An easy to manage dashboard',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: .bold,
                  color: Colors.black87,
                ),
              ),
            ),

            SizedBox(height: height * 0.03),
            Row(
              mainAxisAlignment: .center,
              children: [
                Container(
                  height: height * 0.01,
                  width: width * 0.03,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey.shade300,
                  ),
                ),
                SizedBox(width: width * 0.01),
                Container(
                  height: height * 0.01,
                  width: width * 0.08,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey.shade300,
                  ),
                ),
              ],
            ),
            SizedBox(height: height * 0.033),
            Expanded(
              flex: 3,
              child: Stack(
                children: [
                  SizedBox(
                    height: height * 0.7,
                    width: double.infinity,
                    child: ClipRRect(
                      borderRadius: BorderRadiusGeometry.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50),
                      ),
                      child: Image.asset(
                        'assest/images/onboard1.png',
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),

                  Positioned(
                    bottom: height * 0.05,
                    left: width * 0.28,
                    child: SizedBox(
                      height: height * 0.06,
                      width: width * 0.45,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                        ),
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => LoginPage(),
                            ),
                          );
                        },
                        child: Text(
                          'Next',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: .bold,
                          ),
                        ),
                      ),
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
