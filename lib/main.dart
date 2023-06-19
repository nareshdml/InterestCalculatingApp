import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Simple Interest Calculator',
      home: Homepage(),
    ));

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  String p = '', t = '', r = '', result = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Simple Interest Calculator"),
        backgroundColor: myColor,
      ),
      body: Container(
        padding: EdgeInsets.all(15),
        child: ListView(
          children: [
            SizedBox(
              height: 10,
            ),
            // for Principle
            TextField(
              onChanged: (val) {
                p = val;
              },
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  hintText: 'Enter Principal',
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(10)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.green),
                      borderRadius: BorderRadius.circular(10))),
            ),
            SizedBox(
              height: 10,
            ),
            // for time
            TextField(
              onChanged: (val) {
                t = val;
              },
              decoration: InputDecoration(
                  hintText: 'Enter time',
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(10)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.green),
                      borderRadius: BorderRadius.circular(10))),
              keyboardType: TextInputType.number,
            ),
            SizedBox(
              height: 10,
            ),
            // for rate
            TextField(
              onChanged: (val) {
                r = val;
              },
              decoration: InputDecoration(
                  hintText: 'Enter rate',
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(10)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.green),
                      borderRadius: BorderRadius.circular(10))),
              // keyboardType: TextInputType.number,
            ),
            SizedBox(
              height: 20,
            ),
            MaterialButton(
              padding: EdgeInsets.all(15),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              color: Colors.red,
              height: 50,
              onPressed: () {
                setState(() {
                  result = (double.parse(p) *
                          double.parse(t) *
                          double.parse(r) /
                          100)
                      .toString();
                });
              },
              child: Text(
                "Calculate",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
            // SizedBox(
            //   height: 50,
            // ),
            Center(
              child: Text(
                "Simple Interest is $result",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }
}

const myColor = Color(0xFFE21717);
