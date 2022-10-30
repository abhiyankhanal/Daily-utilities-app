import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:simple/presentation/const/colors.dart';
import 'package:simple/presentation/model/expense_item.dart';

class AddExpense extends StatefulWidget {
  const AddExpense({super.key});

  @override
  State<AddExpense> createState() => _AddExpenseState();
}

class _AddExpenseState extends State<AddExpense> {
  TextEditingController nameController = TextEditingController();
  TextEditingController amountController = TextEditingController();
  ExpenseItem? item = ExpenseItem();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Expense"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 20,
          ),
          const Text("Please fill the details below to add the items"),
          Container(
            padding: const EdgeInsets.all(20),
            child: Form(
              key: _formKey,
              child: Column(
                children: <Widget>[
                  TextFormField(
                    controller: nameController,
                    validator: (val) {
                      if (val!.isEmpty) return "*Item name can't be empty.";
                      return null;
                    },
                    textInputAction: TextInputAction.next,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide(),
                        ),
                        labelText: "Item Name"),
                    // onFieldSubmitted: (val) {
                    //   item?.name = val;
                    // },
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    controller: amountController,
                    validator: (val) {
                      try {
                        int newVal = int.parse(val!).abs();
                      } catch (e) {
                        return "Amount must be a number";
                      }
                      if (val.isEmpty) {
                        return "*Amount can't be empty.";
                      }
                      return null;
                    },
                    textInputAction: TextInputAction.next,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide(),
                        ),
                        labelText: "Amount"),
                    // onFieldSubmitted: (val) {
                    //   item?.price = int.parse(val);
                    // },
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                ],
              ),
            ),
          ),
          MaterialButton(
            minWidth: 200,
            height: 50,
            textColor: bgCol,
            color: mainCol,
            child: const Text("Submit"),
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Processing Data')),
                );
                item?.name = nameController.text;
                item?.price = int.parse(amountController.text).abs();
                print(
                    "-----------------------/n/n/n New Message here-----------------------------");
                print("Name here: ${item?.name}");
                print(item?.price.toString());
                Navigator.of(context).pushNamed("/");
              }
            },
          ),
        ],
      ),
    );
  }
}
