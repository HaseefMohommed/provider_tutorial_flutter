import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_tutorail/provider/list_provider.dart';

class Second extends StatefulWidget {
  const Second({super.key});

  @override
  State<Second> createState() => _SecondState();
}

class _SecondState extends State<Second> {
  @override
  Widget build(BuildContext context) {
    return Consumer<NumbersListProvider>(
      builder: ((context, numbersProvidersModel, child) => Scaffold(
            floatingActionButton: FloatingActionButton(
              child: const Icon(Icons.add),
              onPressed: () {
                numbersProvidersModel.add();
              },
            ),
            appBar: AppBar(),
            body: SizedBox(
              child: Column(children: [
                Text(
                  numbersProvidersModel.numbers.last.toString(),
                  style: const TextStyle(fontSize: 28),
                ),
                SizedBox(
                  height: 200,
                  width: double.maxFinite,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: numbersProvidersModel.numbers.length,
                    itemBuilder: (context, index) => Text(
                      numbersProvidersModel.numbers[index].toString(),
                      style: const TextStyle(fontSize: 28),
                    ),
                  ),
                )
              ]),
            ),
          )),
    );
  }
}
