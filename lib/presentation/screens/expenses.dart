import 'package:flutter/material.dart';
import 'package:simple/presentation/const/colors.dart';
import 'package:simple/presentation/const/styles.dart';
import 'package:simple/presentation/model/expense_item.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<Expenses> createState() => _ExpensesState();
}

class _ExpensesState extends State<Expenses> {
  List<ExpenseItem> itemList = [
    ExpenseItem(name: "Food", price: 300),
    ExpenseItem(name: "Food", price: 300)
  ];
  int itemTotal = 0;
  void calcTotal() {
    List<int> priceList = [];
    itemList.forEach((e) => priceList.add(e.price!));
    itemTotal = priceList.fold(0, (previous, current) => previous + current);
  }

  @override
  void initState() {
    // TODO: implement initState
    calcTotal();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final screenH = MediaQuery.of(context).size.height;
    final screenW = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Expenses"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            SingleChildScrollView(
              child: Container(
                height: screenH * 0.65,
                padding: const EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: offWhite,
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text("Total Expenses", style: headerStyle),
                        Text(
                          itemTotal.toString(),
                          style: headerStyle,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Column(
                      children: itemList.map((e) {
                        return Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                Text(
                                  e.name!,
                                  style: itemStyle,
                                ),
                                Text(
                                  e.price.toString(),
                                  style: itemStyle,
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                          ],
                        );
                      }).toList(),
                    ),
                  ],
                ),
              ),
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
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed("/add_expense");
        },
        child: IconButton(
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
