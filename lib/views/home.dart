import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_tutorail/provider/list_provider.dart';
import 'package:provider_tutorail/views/second.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Consumer<NumbersListProvider>(
      builder: ((context, numbersProviderModel, child) => Scaffold(
            floatingActionButton: FloatingActionButton(
              child: const Icon(Icons.add),
              onPressed: () {
                numbersProviderModel.add();
              },
            ),
            appBar: AppBar(),
            body: SizedBox(
              child: Column(children: [
                Text(
                  numbersProviderModel.numbers.last.toString(),
                  style: const TextStyle(fontSize: 28),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: numbersProviderModel.numbers.length,
                    itemBuilder: (context, index) => Text(
                      numbersProviderModel.numbers[index].toString(),
                      style: const TextStyle(fontSize: 28),
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: (() {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: ((context) => const Second()),
                      ),
                    );
                  }),
                  child: const Text('Second'),
                ),
              ]),
            ),
          )),
    );
  }
}
