import 'package:flutter/material.dart';
import 'package:stationaryonlinestore/registration.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF4FFFB),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              alignment: Alignment.topLeft,
              child: Image.asset('images/shape.png'),
            ),
            const SizedBox(height: 30),
            Center(child: Image.asset('images/midimage.png')),
            SizedBox(height: 50),
            Center(
              child: const Text(
                'Gets things with TODOs',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 21),
              ),
            ),
            const SizedBox(height: 15),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Text(
                "• Create, manage, and complete your tasks easily.\n"
                "• Organize your day with smart to-do lists\n"
                "• Keep everything on track with a simple task manager.\n"
                "• Plan better. Work smarter.\n",
                style: TextStyle(fontSize: 15, height: 1.5),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.05),
            Center(
              child: SizedBox(
                width: 350,
                height: 55,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.cyan[700],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => (RegistrationScreen()),
                      ),
                    );
                  },
                  child: Text(
                    "Get started",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
