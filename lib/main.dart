import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Random random = Random();
  int x = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Lottery App',),
          backgroundColor: Colors.cyan,

          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
                child: Text(
              "Lottery Winning Number is 4 ",
              style: TextStyle(fontWeight: FontWeight.bold),
            )),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 250,
              width: 300,
              decoration: BoxDecoration(
                  color:x==4? Colors.greenAccent:Colors.grey.withOpacity(.2),
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: x == 4
                    ? Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.done_all,
                            color: Colors.green,
                            size: 25,
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            'Cogratulations You Have Won The Lottery, Your Number Is  $x \n',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )
                        ],
                      )
                    : Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.error,
                            color: Colors.red,
                            size: 25,
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            'Better Luck Next Time Your Lottery Number is $x \n Try Again',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            x = random.nextInt(6);
            print(x);
            setState(() {});
          },
          child: Icon(Icons.refresh),
        ),
      ),
    );
  }
}
