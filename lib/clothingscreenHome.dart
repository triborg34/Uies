// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tests/constanst.dart';
import 'package:tests/controller.dart';

class HomeClothing extends StatelessWidget {
  const HomeClothing({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: Obx(
          () => BottomNavigationBar(
            currentIndex: Get.find<Controllers>().naviindex.value,
            onTap: (value) {
              Get.find<Controllers>().naviindex.value = value;
            },
            selectedItemColor: Colors.black,
            unselectedItemColor: Colors.black.withOpacity(0.5),
            items: [
              BottomNavigationBarItem(
                  label: 'Home',
                  icon: Icon(
                    Icons.home,
                    semanticLabel: 'Home',
                  )),
              BottomNavigationBarItem(
                  label: 'Home',
                  icon: Icon(Icons.explore, semanticLabel: 'Home')),
              BottomNavigationBarItem(
                  label: 'Home', icon: Icon(Icons.shop, semanticLabel: 'Home')),
              BottomNavigationBarItem(
                  label: 'Home',
                  icon: Icon(Icons.settings, semanticLabel: 'Home'))
            ],
            showSelectedLabels: false,
            showUnselectedLabels: false,
          ),
        ),
        body: Container(
          color: Color.fromRGBO(241, 241, 241, 1.0),
          width: Get.width,
          height: Get.height,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
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
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
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
                              Padding(
                                padding: const EdgeInsets.only(
                                    bottom: 8.0, left: 10),
                                child: Align(
                                    alignment: Alignment.bottomLeft,
                                    child: Text(
                                      modelslist[index].title,
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 24,
                                          fontWeight: FontWeight.bold),
                                    )),
                              ),
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Padding(
                                  padding: const EdgeInsets.only(bottom: 8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      for (int k = 0;
                                          k < modelslist.length;
                                          k++)
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 2),
                                          child: CircleAvatar(
                                            radius: 3,
                                            backgroundColor: index == k
                                                ? Colors.white
                                                : Colors.white.withOpacity(0.5),
                                          ),
                                        )
                                    ],
                                  ),
                                ),
                              )
                            ],
                          )),
                ),
                SizedBox(
                  height: 5,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      for (int i = 0; i < cats.length; i++)
                        Obx(
                          () => GestureDetector(
                            onTap: () {
                              Get.find<Controllers>().catindex.value = i;
                            },
                            child: Container(
                              margin: EdgeInsets.symmetric(horizontal: 5),
                              padding: EdgeInsets.all(5.0),
                              decoration: BoxDecoration(
                                  color:
                                      Get.find<Controllers>().catindex.value ==
                                              i
                                          ? Colors.black
                                          : Colors.transparent,
                                  borderRadius: BorderRadius.circular(1)),
                              child: Center(
                                  child: Text(
                                cats[i],
                                style: TextStyle(
                                  color:
                                      Get.find<Controllers>().catindex.value ==
                                              i
                                          ? Colors.white
                                          : Colors.black.withOpacity(0.5),
                                ),
                              )),
                            ),
                          ),
                        )
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Center(
                    child: Wrap(
                      crossAxisAlignment: WrapCrossAlignment.center,
                      alignment: WrapAlignment.center,
                      spacing: 10.0,
                      children: [
                        for (int i = 0; i < modelslist.length; i++)
                          MyContain(i: i)
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}

class MyContain extends StatelessWidget {
  int i = 0;
  MyContain({required this.i});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(10.0),
      margin: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      height: 200,
      width: 150,
      child: Column(children: [
        Stack(
          children: [
            Container(
              height: 150,
              width: 175,
              child: Image.asset(
                modelslist[i].imagePath,
                fit: BoxFit.fill,
              ),
            ),
            Align(
                alignment: Alignment.topRight,
                child: Obx(
                  () => GestureDetector(
                    onTap: () {
                      Get.find<Controllers>().indexcontroller.value = i;
                      Get.find<Controllers>().isLiked.value =
                          !Get.find<Controllers>().isLiked.value;
                    },
                    child: Container(
                      padding: EdgeInsets.all(5.0),
                      color: Colors.black,
                      child: Icon(
                        size: 15,
                        Get.find<Controllers>().isLiked.value &&
                                Get.find<Controllers>().indexcontroller.value ==
                                    i
                            ? Icons.favorite
                            : Icons.favorite_border,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ))
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              modelslist[i].title,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(modelslist[i].price,
                style: TextStyle(fontWeight: FontWeight.bold))
          ],
        )
      ]),
    );
  }
}
