import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: StackCard(),
));



class StackCard extends StatefulWidget {
  @override
  StackCardState createState() => StackCardState();
}

class StackCardState extends State<StackCard> {

  int uiLevel = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      appBar: AppBar(
        title: Text('Portfolio App'),
        centerTitle: true,
        backgroundColor: Colors.black87,
        elevation: 30.0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            uiLevel += 1;
          });
        },
          child: Icon(Icons.add),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: NetworkImage('https://avatars3.githubusercontent.com/u/37049732?s=460&u=44b2bf6e586b47bd904957156bed84c7304f552e&v=4'),radius: 50.0,
              ),
            ),
            Divider(
              height: 30.0, color: Colors.grey[200],
            ),
            SizedBox(
              height:30,
            ),
            Text(
              'NAME', style: TextStyle(
              color: Colors.grey,
              letterSpacing: 2.0,
            ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text('Abhishek Krishna',style: TextStyle(
              color: Colors.white,
              fontSize: 25.0,
              letterSpacing: 1.8,
              fontWeight: FontWeight.bold,
            ),),
            SizedBox(
              height: 30.0,
            ),
            Text(
              'UI LEVEL', style: TextStyle(
              color: Colors.grey,
              letterSpacing: 2.0,
            ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text('$uiLevel',style: TextStyle(
              color: Colors.white,
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
            ),),
            SizedBox(
              height: 30.0,
            ),
            Text(
              'BACKEND', style: TextStyle(
              color: Colors.grey,
              letterSpacing: 2.0,
            ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text('$uiLevel',style: TextStyle(
              color: Colors.white,
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
            ),),
            SizedBox(
              height: 30.0,
            ),
            Row(
              children: <Widget>[
                Icon(Icons.email,
                  color: Colors.blueGrey,
                ),
                SizedBox(
                  width: 10,
                ),
                Text('krishna_abhishek@outlook.com',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                      letterSpacing: 1.8,
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
