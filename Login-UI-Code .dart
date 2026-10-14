import 'package:flutter/material.dart';
import 'package:flutter_real_estate/homepage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: .center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 15, right: 15),
                child: Align(
                  alignment: AlignmentGeometry.topRight,
                  child: TextButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => HomePage()),
                      );
                    },
                    child: Text(
                      'Continue without login',
                      style: TextStyle(
                        fontSize: 19,
                        color: const Color.fromARGB(255, 16, 101, 170),
                        fontWeight: .bold,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: height * 0.06),
              Align(
                alignment: AlignmentGeometry.centerLeft,
                child: SizedBox(
                  height: height * 0.2,
                  child: Image.asset('assest/images/logo.png'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25),
                child: Align(
                  alignment: AlignmentGeometry.centerLeft,
                  child: Text(
                    'Welcome to\nReal Estate',
                    style: TextStyle(fontSize: 25, fontWeight: .bold),
                  ),
                ),
              ),

              SizedBox(height: height * 0.06),
              SizedBox(
                height: height * 0.06,
                width: width * 0.8,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        duration: Duration(seconds: 1),
                        backgroundColor: Colors.red,
                        content: Text(
                          'Server Is Down Try Agian Later',
                          style: TextStyle(
                            fontSize: 17,
                            color: Colors.white,
                            fontWeight: .bold,
                          ),
                        ),
                      ),
                    );
                  },
                  child: Row(
                    mainAxisAlignment: .center,
                    children: [
                      Text(
                        'G',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: .bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(width: width * 0.03),
                      Text(
                        'Sign in with Google',
                        style: TextStyle(fontSize: 17, color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(height: height * 0.02),
              SizedBox(
                height: height * 0.06,
                width: width * 0.8,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 16, 101, 170),
                  ),
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        duration: Duration(seconds: 1),
                        backgroundColor: Colors.red,
                        content: Text(
                          'Server Is Down Try Agian Later',
                          style: TextStyle(
                            fontSize: 17,
                            color: Colors.white,
                            fontWeight: .bold,
                          ),
                        ),
                      ),
                    );
                  },
                  child: Row(
                    mainAxisAlignment: .center,
                    children: [
                      Icon(Icons.facebook, color: Colors.white, size: 25),
                      SizedBox(width: width * 0.03),
                      Text(
                        'Sign in with Facebook',
                        style: TextStyle(fontSize: 17, color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(height: height * 0.02),
              SizedBox(
                height: height * 0.06,
                width: width * 0.8,
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    side: BorderSide(
                      color: const Color.fromARGB(255, 16, 101, 170),
                      width: 1,
                    ),
                  ),
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        duration: Duration(seconds: 1),
                        backgroundColor: Colors.red,
                        content: Text(
                          'Server Is Down Try Agian Later',
                          style: TextStyle(
                            fontSize: 17,
                            color: Colors.white,
                            fontWeight: .bold,
                          ),
                        ),
                      ),
                    );
                  },
                  child: Text(
                    'Create an Account',
                    style: TextStyle(
                      fontSize: 17,
                      color: const Color.fromARGB(255, 16, 101, 170),
                      fontWeight: .bold,
                    ),
                  ),
                ),
              ),

              SizedBox(height: height * 0.02),
              Text(
                'Already have an Account ?',
                style: TextStyle(fontSize: 14, color: Colors.grey.shade600),
              ),

              SizedBox(height: height * 0.01),
              TextButton(
                onPressed: () {},
                child: Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 17,
                    color: Colors.blue,
                    fontWeight: .bold,
                  ),
                ),
              ),

              SizedBox(height: height * 0.045),
              Text(
                'Are You Agree with our Terms & Conditions',
                style: TextStyle(fontSize: 14, color: Colors.grey.shade600),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
