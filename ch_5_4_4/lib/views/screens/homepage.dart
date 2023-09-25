import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int n = 0;
  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;

    double w = s.width;
    double h = s.height;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Dynamic List",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blueGrey[700],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: List.generate(
            n,
            (index) => Container(
              margin: EdgeInsets.all(18),
              padding: EdgeInsets.all(18),
              height: h * 0.1,
              width: w * w,
              decoration: BoxDecoration(
                color: index % 2 == 0 ? Colors.indigo : Colors.lightBlue,
                borderRadius: BorderRadius.circular(18),
              ),
              alignment: Alignment.center,
              child: Text(
                "${index + 1}",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              setState(() {
                n++;
              });
            },
            backgroundColor: Colors.blueGrey[700],
            child: Icon(
              Icons.add,
              weight: 30,
              size: 30,
            ),
          ),
          SizedBox(
            width: w * 0.05,
          ),
          FloatingActionButton(
            onPressed: () {
              setState(() {
                n--;
              });
            },
            backgroundColor: Colors.blueGrey[700],
            child: Icon(
              Icons.horizontal_rule_rounded,
              weight: 30,
              size: 30,
            ),
          ),
        ],
      ),
    );
  }
}
