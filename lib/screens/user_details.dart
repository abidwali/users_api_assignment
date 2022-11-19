import 'package:flutter/material.dart';

class UserDetails extends StatelessWidget {
  final String userPic,
      email,
      name,
      userName,
      street,
      suite,
      city,
      zipCode,
      phone,
      website;
  const UserDetails({
    Key? key,
    required this.userPic,
    required this.zipCode,
    required this.email,
    required this.name,
    required this.userName,
    required this.street,
    required this.suite,
    required this.city,
    required this.phone,
    required this.website,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0XFFFFFFFF),
        elevation: 1,
        foregroundColor: const Color(0XFF141414),
        title: Text(
          name,
          style: const TextStyle(
            color: Color(0XFF141414),
            fontSize: 20,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 14.0, right: 14.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 16, bottom: 16),
              child: Row(
                children: [
                  Image.asset(userPic,
                      height: 80, width: 80, fit: BoxFit.cover),
                  const SizedBox(width: 16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: const TextStyle(
                          color: Color(0XFF141414),
                          fontFamily: 'Roboto',
                          fontSize: 24,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(height: 6),
                      Text(
                        "@$userName",
                        style: const TextStyle(
                          color: Color(0XFF8C8C8C),
                          fontFamily: 'Roboto',
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            RichText(
              text: TextSpan(
                text: "Email: ",
                style: const TextStyle(
                  color: Color(0XFF8C8C8C),
                  fontFamily: 'Roboto',
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
                children: [
                  TextSpan(
                    text: email,
                    style: const TextStyle(
                      color: Color(0XFF141414),
                      fontFamily: 'Roboto',
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 12),
            RichText(
              text: TextSpan(
                text: "Address: ",
                style: const TextStyle(
                  color: Color(0XFF8C8C8C),
                  fontFamily: 'Roboto',
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
                children: [
                  TextSpan(
                    text: "$street, $suite, $city, $zipCode",
                    style: const TextStyle(
                      color: Color(0XFF141414),
                      fontFamily: 'Roboto',
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 12),
            RichText(
              text: TextSpan(
                text: "Phone: ",
                style: const TextStyle(
                  color: Color(0XFF8C8C8C),
                  fontFamily: 'Roboto',
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
                children: [
                  TextSpan(
                    text: phone,
                    style: const TextStyle(
                      color: Color(0XFF141414),
                      fontFamily: 'Roboto',
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 12),
            RichText(
              text: TextSpan(
                text: "Website: ",
                style: const TextStyle(
                  color: Color(0XFF8C8C8C),
                  fontFamily: 'Roboto',
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
                children: [
                  TextSpan(
                    text: website,
                    style: const TextStyle(
                      color: Color(0XFF141414),
                      fontFamily: 'Roboto',
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
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
