import 'package:flutter/material.dart';
import 'package:flutter_catalog/models/codeString.dart';

class BottomNavigaionBarImplementation extends StatefulWidget {
  const BottomNavigaionBarImplementation({Key? key}) : super(key: key);

  @override
  _BottomNavigaionBarImplementationState createState() =>
      _BottomNavigaionBarImplementationState();
}

class _BottomNavigaionBarImplementationState
    extends State<BottomNavigaionBarImplementation> {
  int _currentIndex = 0;
  List items = [Item1(), Item2(), Item3(), Item4()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        margin: EdgeInsets.only(bottom: 5, right: 10, left: 10),
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  color: Colors.deepPurpleAccent.withOpacity(0.9),
                  offset: Offset(0, 4),
                  spreadRadius: -5,
                  blurStyle: BlurStyle.outer,
                  blurRadius: 10),
            ],
            color: Colors.deepPurpleAccent,
            borderRadius: BorderRadius.circular(20)),
        child: BottomNavigationBar(
          backgroundColor: Colors.transparent,
          fixedColor: Colors.yellowAccent,
          unselectedItemColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          currentIndex: _currentIndex,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
            BottomNavigationBarItem(icon: Icon(Icons.list), label: "List"),
            BottomNavigationBarItem(icon: Icon(Icons.inbox), label: "Inbox")
          ],
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
        ),
      ),
      body: Center(
        child: items.elementAt(_currentIndex),
      ),
    );
  }
}

class Item1 extends StatelessWidget {
  const Item1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Icon(Icons.home),
      ),
    );
  }
}

class Item2 extends StatelessWidget {
  const Item2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Icon(Icons.person),
      ),
    );
  }
}

class Item3 extends StatelessWidget {
  const Item3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Icon(Icons.list),
      ),
    );
  }
}

class Item4 extends StatelessWidget {
  const Item4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(child: Icon(Icons.inbox)),
    );
  }
}

class BottomNavigationBarCode extends CodeString {
  @override
  String codeString() {
    return """import 'package:flutter/material.dart';
import 'package:flutter_catalog/models/codeString.dart';

class BottomNavigaionBarImplementation extends StatefulWidget {
  const BottomNavigaionBarImplementation({Key? key}) : super(key: key);

  @override
  _BottomNavigaionBarImplementationState createState() =>
      _BottomNavigaionBarImplementationState();
}

class _BottomNavigaionBarImplementationState
    extends State<BottomNavigaionBarImplementation> {
  int _currentIndex = 0;
  List items = [Item1(), Item2(), Item3(), Item4()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.shifting,
          currentIndex: _currentIndex,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home)),
            BottomNavigationBarItem(icon: Icon(Icons.home)),
            BottomNavigationBarItem(icon: Icon(Icons.home)),
            BottomNavigationBarItem(icon: Icon(Icons.home))
          ]),
      body: items.elementAt(_currentIndex),
    );
  }
}

class Item1 extends StatelessWidget {
  const Item1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Text("Item 1"),
      ),
    );
  }
}

class Item2 extends StatelessWidget {
  const Item2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Text("Item 2"),
      ),
    );
  }
}

class Item3 extends StatelessWidget {
  const Item3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Text("Item 3"),
      ),
    );
  }
}

class Item4 extends StatelessWidget {
  const Item4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Text("Item 4"),
      ),
    );
  }
}""";
  }
}
