import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> {
  var num1 = TextEditingController();
  var num2 = TextEditingController();
  double res = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        title: const Text(
          'Calculator',
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            TextFormField(
              controller: num1,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  label: Text('number 1'),
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                    color: Colors.deepPurpleAccent,
                  )),
                  floatingLabelStyle:
                      TextStyle(color: Colors.deepPurpleAccent)),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              controller: num2,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                label: Text('number 2'),
                border: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.deepPurpleAccent,
                  ),
                ),
                floatingLabelStyle: TextStyle(color: Colors.deepPurpleAccent),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                MaterialButton(
                  onPressed: () {
                    setState(() {
                      res = double.parse(num1.text) + double.parse(num2.text);
                    });
                  },
                  child: Text(
                    '+',
                    style: TextStyle(fontSize: 40, color: Colors.white),
                  ),
                  color: Colors.deepPurpleAccent,
                ),
                SizedBox(
                  width: 10,
                ),
                MaterialButton(
                  onPressed: () {
                    setState(() {
                      res = double.parse(num1.text) - double.parse(num2.text);
                    });
                  },
                  child: Text(
                    '-',
                    style: TextStyle(color: Colors.white, fontSize: 40),
                  ),
                  color: Colors.deepPurpleAccent,
                ),
                SizedBox(
                  width: 10,
                ),
                MaterialButton(
                  onPressed: () {
                    setState(() {
                      res = double.parse(num1.text) * double.parse(num2.text);
                    });
                  },
                  child: Text(
                    '*',
                    style: TextStyle(color: Colors.white, fontSize: 40),
                  ),
                  color: Colors.deepPurpleAccent,
                ),
                SizedBox(
                  width: 10,
                ),
                MaterialButton(
                  onPressed: () {
                    setState(() {
                      res = double.parse(num1.text) / double.parse(num2.text);
                    });
                  },
                  child: Text(
                    '/',
                    style: TextStyle(color: Colors.white, fontSize: 40),
                  ),
                  color: Colors.deepPurpleAccent,
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              '${res}',
              style: TextStyle(fontSize: 30),
            )
          ],
        ),
      ),
    );
  }
}
