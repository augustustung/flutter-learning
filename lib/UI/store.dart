import 'package:flutter/material.dart';
import 'package:learning/models/question.dart';

//quote app
/*
class Wisdom extends StatefulWidget {
  @override
  _WisdomState createState() => _WisdomState();
}

class _WisdomState extends State<Wisdom> {
  int _count = 0;

  List quote = [
    "➼Be ABLE to Build Any iOS and Android App You Want",
    "➼MASTER Dart and Flutter Framework",
    "➼BUILD Full-fledged Apps for Your Startup or Business",
    "➼CREATE a Portfolio of Apps to Apply for Development Job",
    "➼WORK as A Cross-Platform Mobile Developer Who can Develop iOS and Android Apps",
    "➼GAIN a Competitive Advantage in the Workplace as a Flutter Mobile Developer"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: Center(
                child: Container(
                    width: 350,
                    height: 200,
                    margin: EdgeInsets.all(30.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.transparent),
                    child: Center(
                        child: Text(
                      quote[_count % quote.length],
                      style: TextStyle(
                          fontSize: 18.0,
                          color: Colors.grey.shade800,
                          fontStyle: FontStyle.italic),
                    ))),
              ),
            ),
            Divider(
              thickness: 2.6,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: FlatButton.icon(
                onPressed: _showQuote,
                color: Colors.deepOrangeAccent,
                icon: Icon(Icons.wb_sunny),
                label: Text(
                  "Inspire me!",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.0,
                      fontWeight: FontWeight.w700),
                ),
              ),
            ),
            Spacer()
          ],
        ),
      ),
    );
  }

  _showQuote() {
    setState(() {
      _count += 1;
    });
  }
}*/

//my card
/*
class BizCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text("BizCard"),
          centerTitle: true,
        ),
        body: Container(
          alignment: Alignment.center,
          child: Stack(
            alignment: Alignment.topCenter,
            children: <Widget>[_getCard(), _getAvartar()],
          ),
        ),
      ),
    );
  }
  _getAvartar() {
    return Container(
      width: 100,
      height: 100,
      alignment: Alignment.topCenter,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50.0),
          color: Colors.white,
          border: Border.all(color: Colors.redAccent, width: 3.0),
          image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage("https://picsum.photos/300/300"))),
    );
  }

  _getCard() {
    return Container(
      width: 300,
      height: 200,
      margin: EdgeInsets.all(50.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.pinkAccent,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.all(10.0),
            child: Text(
              "Augustus Flynn",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
          ),
          Container(
              margin: EdgeInsets.all(8.0),
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Icon(Icons.link_outlined),
                Text(
                  "https://github.com/augustustung",
                  style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w500,
                      fontStyle: FontStyle.italic),
                ),
              ])),
          Container(
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                Icon(Icons.account_circle_outlined),
                Text("huytung139@gmail.com")
              ]))
        ],
      ),
    );
  }
}


//everything is here

class CustomButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        final snackBar = SnackBar(
          content: Text(
            "ADUDU",
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.lightGreenAccent,
        );
        Scaffold.of(context).showSnackBar(snackBar);
      },
      child: Container(
        padding: EdgeInsets.all(16.0),
        decoration: BoxDecoration(
            color: Colors.pinkAccent, borderRadius: BorderRadius.circular(8.0)),
        child: Text("Button"),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  _tabButton() {
    print('tapped');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shopping Cart"),
        centerTitle: true,
        backgroundColor: Colors.amber.shade200,
        actions: <Widget>[
          IconButton(onPressed: _tabButton, icon: Icon(Icons.email_outlined))
        ],
      ),
      backgroundColor: Colors.redAccent.shade100,
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child:
                  // InkWell(
                  //   child: Text("Tap me!", style: TextStyle(fontSize: 34.0)),
                  //   onTap: () => print("HAHAHAHAHA"),
                  // ),
                  CustomButton(),
              color: Colors.blueAccent.shade400,
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightGreen,
        elevation: 0,
        child: Icon(
          Icons.shopping_cart_outlined,
          size: 30,
          color: Colors.black,
        ),
        onPressed: () => {print('Cart!')},
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_outlined),
              title: Text("Profile")),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), title: Text("Settings"))
        ],
        onTap: (int i) => {print("Tapped $i")},
      ),
    );
  }
} */

//Quizz app
class QuizzApp extends StatefulWidget {
  @override
  _QuizzAppState createState() => _QuizzAppState();
}

class _QuizzAppState extends State<QuizzApp> {
  List Quizz = [
    Questions.name(false, "Are you gay?"),
    Questions.name(false, "Are you less?"),
    Questions.name(true, "Do you love me?"),
    Questions.name(false, "Will you leave me?"),
  ];
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("QuizzApp"),
          centerTitle: true,
          backgroundColor: Colors.blueGrey,
        ),
        backgroundColor: Colors.blueGrey,

        //use Builder to get a new contact of Scafford
        //else return null
        body: Builder(
          builder: (BuildContext context) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 16.0),
                  child: Image.asset(
                    "assets/image/1.png",
                    width: 250,
                    height: 180,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                      decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(14.4),
                          border: Border.all(
                              color: Colors.blueGrey.shade400,
                              style: BorderStyle.solid)),
                      height: 120,
                      child: Center(
                          child: Text(
                        Quizz[_index].questionText,
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0),
                      ))),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    RaisedButton.icon(
                        color: Colors.deepPurpleAccent.shade700,
                        onPressed: () {
                          _back();
                        },
                        icon: Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                        ),
                        label: Text("")),
                    RaisedButton(
                      color: Colors.deepPurpleAccent.shade700,
                      onPressed: () {
                        _check(true, context);
                      },
                      child:
                          Text("TRUE", style: TextStyle(color: Colors.white)),
                    ),
                    RaisedButton(
                      color: Colors.deepPurpleAccent.shade700,
                      onPressed: () {
                        _check(false, context);
                      },
                      child:
                          Text("FALSE", style: TextStyle(color: Colors.white)),
                    ),
                    RaisedButton.icon(
                        color: Colors.deepPurpleAccent.shade700,
                        onPressed: () {
                          _skip();
                        },
                        icon: Icon(
                          Icons.arrow_forward,
                          color: Colors.white,
                        ),
                        label: Text(""))
                  ],
                ),
                Spacer()
              ],
            );
          },
        ));
  }

  _check(bool userChoice, BuildContext context) {
    if (userChoice == Quizz[_index].isCorrect) {
      final snackBar = SnackBar(
        duration: Duration(milliseconds: 500),
        content: Text(
          "Correct",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.green,
      );
      Scaffold.of(context).showSnackBar(snackBar);
      _skip();
    } else {
      final snackBar = SnackBar(
        duration: Duration(milliseconds: 500),
        content: Text(
          "Incorrect",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.red,
      );
      Scaffold.of(context).showSnackBar(snackBar);
    }
  }

  _skip() {
    setState(() {
      _index = (_index + 1) % Quizz.length;
    });
  }

  _back() {
    setState(() {
      _index = (_index - 1) % Quizz.length;
    });
  }
}
