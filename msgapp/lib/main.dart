import 'package:flutter/material.dart';

void main() => runApp(
      MyApp(),
    );

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Message app",
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: Homepage(),
    );
  }
}

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  TextEditingController controller = TextEditingController();
  String name = "";
  Color themeColor = Colors.green;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: themeColor,
          title: Text(
            "Message Card",
            style: TextStyle(
                color: Colors.black,
                fontSize: 30.0,
                fontWeight: FontWeight.w900),
          ),
          centerTitle: true,
        ),
        body: ListView(
          // listview ma   crossAxisAlignment: CrossAxisAlignment.stretch,   rakhna paudaina.
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 250.0,
                color: themeColor,
                child: Center(
                    child: Text(
                  name,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'cursive'),
                )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: controller,
                maxLength: 50,
                onChanged: (String newvalue) {
                  // print(newvalue);
                  setState(() {
                    name = newvalue;
                  });
                },
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: themeColor, width: 3.0),
                  ),
                  hintText: "Your Message",
                  helperText: "You can write your message here",
                  hintStyle: TextStyle(fontSize: 20.0),
                  helperStyle: TextStyle(fontSize: 16.0),
                  prefixIcon: Icon(
                    Icons.edit,
                    color: themeColor,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RaisedButton(
                onPressed: () {
                  controller.clear();
                },
                color: themeColor,
                child: Text("Clear"),
              ),
            ),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    InkWell(
                      // inkwell ley j sukai lai click garna milne banaidinaxa.
                      onTap: () {
                        setState(() {
                          themeColor = Colors.red;
                        });
                      },
                      child: CircleAvatar(
                        backgroundColor: Colors.red,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          themeColor = Colors.yellow;
                        });
                      },
                      child: CircleAvatar(
                        backgroundColor: Colors.yellow,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          themeColor = Colors.grey;
                        });
                      },
                      child: CircleAvatar(
                        backgroundColor: Colors.grey,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          themeColor = Colors.green;
                        });
                      },
                      child: CircleAvatar(
                        backgroundColor: Colors.green,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
