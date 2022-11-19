import 'package:flutter/material.dart';

class DummyScreen extends StatelessWidget {
  final String pageName;
  const DummyScreen({
    Key? key,
    required this.pageName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              RichText(
                text: const TextSpan(
                  text: "Hi My Name Is ",
                  style: TextStyle(
                    color: Color(0XFF8C8C8C),
                    fontFamily: 'Roboto',
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                  children: [
                    TextSpan(
                      text: "'Abid Wali'",
                      style: TextStyle(
                        color: Color.fromARGB(255, 215, 138, 138),
                        fontFamily: 'Roboto',
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 5),
              const Text(
                "I hope You would like my work!",
                style: TextStyle(
                  color: Color(0XFF8C8C8C),
                  fontFamily: 'Roboto',
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                "This is dummy",
                style: TextStyle(
                  color: Color(0XFF8C8C8C),
                  fontFamily: 'Roboto',
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 15),
              Text(
                pageName,
                style: const TextStyle(
                  color: Color.fromARGB(255, 142, 115, 115),
                  fontFamily: 'Roboto',
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
