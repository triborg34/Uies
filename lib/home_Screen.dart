import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tests/controller.dart';

class HomeScreen extends StatelessWidget {
  List textx = ['All', 'Gaming Stuff', 'Camera Stuff', 'Pc Stuff'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(15, 16, 20, 1.0),
      body: Container(
          child: Column(
        children: [
          Stack(
            children: [
              Container(
                padding: EdgeInsets.all(15),
                margin: EdgeInsets.all(30.0),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.5,
                decoration: BoxDecoration(
                    color: Color.fromRGBO(104, 126, 255, 1.0),
                    borderRadius: BorderRadius.circular(25)),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              border:
                                  Border.all(width: 2, color: Colors.white)),
                          child: Icon(
                            color: Colors.white,
                            size: 35,
                            Icons.more_horiz,
                          )),
                      SizedBox(
                        height: 10,
                      ),
                      RotatedBox(
                        quarterTurns: -1,
                        child: Container(
                            padding: EdgeInsets.all(25),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(35),
                                color: Color(0xff8c9dff)),
                            child: Text(
                              "Best Selling",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            )),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Text(
                                "XBOX Controller",
                                style: TextStyle(
                                    color: Colors.white.withOpacity(0.5),
                                    fontSize: 18),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                "\$199.99",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 32,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                          CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 40,
                            child: Center(
                                child: Icon(
                              Icons.add,
                              color: Colors.orange,
                              size: 45,
                            )),
                          )
                        ],
                      )
                    ]),
              ),
              Positioned(
                top: 20,
                left: 140,
                child: Image.asset(
                  'assets/images/con.png',
                  height: 250,
                ),
              ),
            ],
          ),
          Expanded(
              child: Container(
            child: Column(children: [
              Container(
                height: 40,
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => Obx(
                          () => GestureDetector(
                            onTap: () => Get.find<Controllers>()
                                .currentindex
                                .value = index,
                            child: Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Color(0xff2a2d38),
                              ),
                              child: Center(
                                child: Text(
                                  textx[index],
                                  style: TextStyle(
                                      color: Get.find<Controllers>()
                                                  .currentindex
                                                  .value ==
                                              index
                                          ? Colors.white
                                          : Colors.white.withOpacity(0.5),
                                      fontSize: 18),
                                ),
                              ),
                            ),
                          ),
                        ),
                    separatorBuilder: (context, index) => SizedBox(
                          width: 10,
                        ),
                    itemCount: textx.length),
              )
            ]),
          ))
        ],
      )),
    );
  }
}
