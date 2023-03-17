import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        //make it not scrollable
        //physics: NeverScrollableScrollPhysics(),

        //how many items total you want to see
        itemCount: 20,
        gridDelegate:
            //how many in the row
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 50,
              width: 50,
              color: Colors.lime,
            ),
          );
        },
      ),
    );
  }
}
