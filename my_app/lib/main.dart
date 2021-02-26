import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: ' Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool passvisible = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red[300],
          title: Text("appbar"),
        ),
        body: Container(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                SizedBox(height: 40),
                Container(
                  margin: EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: "text field",
                      labelStyle: TextStyle(fontSize: 30),
                      hintText: "entre text",
                      hintStyle: TextStyle(fontSize: 20),
                    ),
                    keyboardType: TextInputType.text,
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: "Name",
                      labelStyle: TextStyle(
                        fontSize: 30,
                        color: Colors.red[300],
                      ),
                      hintText: "entre Name",
                      hintStyle: TextStyle(
                        fontSize: 20,
                        color: Colors.red[300],
                      ),
                      icon: Icon(
                        Icons.person_outline,
                        color: Colors.red[300],
                      ),
                    ),
                    keyboardType: TextInputType.text,
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: "E-MAIL",
                      labelStyle: TextStyle(fontSize: 30),
                      hintText: "entre e-mail",
                      hintStyle: TextStyle(fontSize: 20),
                      icon: Icon(
                        Icons.alternate_email,
                        color: Colors.red[300],
                      ),
                    ),
                    keyboardType: TextInputType.emailAddress,
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                        labelText: "password",
                        labelStyle: TextStyle(fontSize: 30),
                        hintText: "entre password",
                        hintStyle: TextStyle(fontSize: 20),
                        suffixIcon: IconButton(
                            color: Colors.red[300],
                            icon: Icon(passvisible
                                ? Icons.visibility
                                : Icons.visibility_off),
                            onPressed: () {
                              setState(() {
                                passvisible = !passvisible;
                              });
                            })),
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: passvisible,
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                        labelText: "phone number",
                        labelStyle: TextStyle(fontSize: 30),
                        hintText: "entre phone nmber",
                        hintStyle: TextStyle(fontSize: 20),
                        icon: Icon(
                          Icons.phone,
                          color: Colors.red[300],
                        )),
                    keyboardType: TextInputType.number,
                  ),
                ),
                SizedBox(height: 20)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
