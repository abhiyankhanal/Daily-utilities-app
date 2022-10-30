import 'package:flutter/material.dart';
import 'package:simple/presentation/const/colors.dart';
import 'package:simple/presentation/const/styles.dart';

class ShopList extends StatelessWidget {
  const ShopList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Shopping List"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    const Icon(
                      Icons.check_box_rounded,
                      color: mainCol,
                      size: 20,
                    ),
                    const SizedBox(
                      width: 3,
                    ),
                    const Text(
                      "Checked",
                      style: headerStyle,
                    ),
                  ],
                ),
                // ignore: prefer_const_constructors
                Text(
                  "3",
                  style: headerStyle,
                ),
                // ignore: prefer_const_constructors
                Text(
                  "283",
                  style: headerStyle,
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    const Icon(
                      Icons.check_box_outline_blank,
                      color: mainCol,
                      size: 20,
                    ),
                    const SizedBox(
                      width: 3,
                    ),
                    const Text(
                      "Checked",
                      style: headerStyle,
                    ),
                  ],
                ),
                // ignore: prefer_const_constructors
                Text(
                  "3",
                  style: headerStyle,
                ),
                // ignore: prefer_const_constructors
                Text(
                  "283",
                  style: headerStyle,
                )
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: offWhite,
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const Text(
                        "Item Name",
                        style: itemStyle,
                      ),
                      const Text(
                        "30",
                        style: itemStyle,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const Text(
                        "name",
                        style: itemStyle,
                      ),
                      const Text(
                        "50",
                        style: itemStyle,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.start,
                  //   children: [
                  //     MaterialButton(
                  //       textColor: bgCol,
                  //       color: mainCol,
                  //       child: const Text("Weekly"),
                  //       onPressed: () => null,
                  //     ),
                  //     const SizedBox(
                  //       width: 10,
                  //     ),
                  //     MaterialButton(
                  //       textColor: bgCol,
                  //       color: mainCol,
                  //       child: const Text("Monthly"),
                  //       onPressed: () => null,
                  //     ),
                  //   ],
                  // )
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => null,
        child: const IconButton(
          onPressed: null,
          icon: Icon(
            Icons.add,
            color: bgCol,
          ),
        ),
      ),
    );
  }
}
