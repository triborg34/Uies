import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeClothing extends StatelessWidget {
  const HomeClothing({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      padding: EdgeInsets.all(15),
      color: Color.fromRGBO(241, 241, 241, 1.0),
      width: Get.width,
      height: Get.height,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/avatar.jpg'),
                      scale: 10.0,
                      fit: BoxFit.contain),
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
              SizedBox(
                width: 15,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "HELLO !",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Aref Mousavi !",
                    style: TextStyle(
                        color: Colors.black.withOpacity(0.5),
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Spacer(),
              Icon(Icons.search),
              Icon(Icons.rectangle_outlined)
            ],
          )
        ],
      ),
    ));
  }
}
