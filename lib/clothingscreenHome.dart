import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tests/constanst.dart';

class HomeClothing extends StatelessWidget {
  const HomeClothing({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: Color.fromRGBO(241, 241, 241, 1.0),
      width: Get.width,
      height: Get.height,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(15),
            child: Row(
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
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
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
                Icon(
                  Icons.search,
                  size: 24,
                ),
                SizedBox(
                  width: 10,
                ),
                Stack(alignment: Alignment.topRight, children: [
                  Icon(Icons.rectangle_outlined, size: 24),
                  CircleAvatar(
                    backgroundColor: Colors.red,
                    radius: 4,
                  )
                ])
              ],
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            height: 300,
            child: PageView.builder(
                itemCount: modelslist.length,
                itemBuilder: (context, index) => Stack(
                      children: [
                        Container(
                          height: 300,
                          width: Get.width,
                          child: Image.asset(
                            modelslist[index].imagePath,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ],
                    )),
          )
        ],
      ),
    ));
  }
}
