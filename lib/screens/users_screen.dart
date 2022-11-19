import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import '../models/model.dart';
import 'user_details.dart';

class UsersScreen extends StatelessWidget {
  UsersScreen({super.key});

  Future getData() async {
    final url = Uri.parse("https://jsonplaceholder.typicode.com/users");
    var response = await http.get(url);
    final users = usersFromJson(response.body);
    return users;
  }

  final imageList = [
    "assets/images/user1.png",
    "assets/images/user2.png",
    "assets/images/user3.png",
    "assets/images/user4.png",
    "assets/images/user5.png",
    "assets/images/user1.png",
    "assets/images/user2.png",
    "assets/images/user3.png",
    "assets/images/user4.png",
    "assets/images/user5.png",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0XFFFFFFFF),
        elevation: 1,
        title: Image.asset("assets/images/Logo.png"),
        centerTitle: false,
        actions: [
          Image.asset("assets/icons/Notification.png"),
          Image.asset("assets/icons/Search.png"),
        ],
      ),
      body: FutureBuilder(
        future: getData(),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Center(child: Text("${snapshot.error}"));
          } else if (snapshot.hasData) {
            var items = snapshot.data;

            return SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(height: 16),
                  ListView.builder(
                    shrinkWrap: true,
                    physics: const ScrollPhysics(),
                    itemCount: items.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(
                            left: 14.0, right: 14.0, bottom: 12.0),
                        child: ListTile(
                          leading: Image.asset(imageList[index]),
                          title: Text(items[index].name.toString()),
                          subtitle:
                              Text("@${items[index].username.toString()}"),
                          trailing: TextButton(
                            onPressed: () {
                              Get.to(
                                () => UserDetails(
                                  name: items[index].name.toString(),
                                  email: items[index].email.toString(),
                                  userName: items[index].username.toString(),
                                  city: items[index].address.city.toString(),
                                  street:
                                      items[index].address.street.toString(),
                                  suite:
                                      items[index].address.suite.toString(),
                                  zipCode:
                                      items[index].address.zipcode.toString(),
                                  phone: items[index].phone.toString(),
                                  website: items[index].website.toString(),
                                  userPic: imageList[index],
                                ),
                                transition: Transition.rightToLeftWithFade,
                                duration: const Duration(seconds: 1),
                              );
                            },
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(4.0),
                                    side: const BorderSide(
                                      color: Color(0XFFEEEEEE),
                                    )),
                              ),
                            ),
                            child: const Text(
                              "View",
                              style: TextStyle(
                                color: Color(0XFF7000FF),
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          shape: RoundedRectangleBorder(
                            side: const BorderSide(
                                width: 1, color: Color(0XFFEEEEEE)),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
            );
          }
          return const Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
