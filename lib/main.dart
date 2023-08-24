import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),
        body: Center(
          child: Expanded(
            flex: 2,
            child: Container(
              width: 320,
              height: 470,
              // color: Colors.amber,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black, blurRadius: 10, spreadRadius: 0.2),
                  ]),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0, top: 16.0),
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 2, right: 1),
                          child: Text(
                            'Linked',
                            style: TextStyle(
                              fontSize: 23,
                              color: Color.fromARGB(255, 9, 103, 180),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Container(
                            height: 28,
                            width: 31,
                            // color: Color.fromARGB(255, 9, 103, 180),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Color.fromARGB(255, 9, 103, 180)),
                            child: Text(
                              ' in',
                              style: TextStyle(
                                fontSize: 23,
                                color: Colors.white,
                                // backgroundColor: Color.fromARGB(255, 9, 103, 180),
                                fontWeight: FontWeight.bold,
                              ),
                            )),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0, top: 10.0),
                    child: Row(
                      children: [
                        Text(
                          'Sign In',
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Stay Updated on your professional world',
                          style: TextStyle(fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 16.0, right: 16.0, top: 16.0),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: 'Email',
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: BorderSide(
                                width: 2,
                                color: Colors.black,
                              )),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: BorderSide(color: Colors.black),
                          )),
                    ),
                  ),
                  Container(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 5.0, left: 16.0, right: 16.0, bottom: 10.0),
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          hintText: 'Password',
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: BorderSide(
                                width: 2,
                                color: Colors.black,
                              )),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: BorderSide(
                                color: Colors.black,
                              ))),
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 16.0, top: 20.0),
                        child: Text(
                          'Forgot password?',
                          style: TextStyle(
                              color: Color.fromARGB(255, 9, 103, 180),
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  InkWell(
                    onTap: () {},
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 16.0, right: 16.0, top: 20.0),
                      child: Container(
                        width: 500,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 9, 103, 180),
                          borderRadius: BorderRadius.circular(25),
                        ),
                        // width: double.infinity,
                        child: Center(
                          child: Text(
                            'Sign In',
                            style: TextStyle(
                                backgroundColor:
                                    Color.fromARGB(255, 9, 103, 180),
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 16.0, left: 16.0, right: 16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'New to linkedin?',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Join Now',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 9, 103, 180)),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
