
import 'package:flutter/material.dart';
import 'package:tecprime/screen/contato.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: Image.asset(
            'assets/footer_logo.png',
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.list,
                color: Theme.of(context).primaryColor,
              ),
              onPressed: () {},
            )
          ],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(10),
                height: 350,
                width: 220,
                child: Image.asset('assets/footer_logo.png'),
              ),
              SizedBox(
                height: 2,
              ),
              Text("Pessoas precisam de pessoas.",style: TextStyle(fontWeight: FontWeight.bold,),),
              SizedBox(
                height: 25,
              ),
              RaisedButton(
                onPressed: () {
                    Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => Contato())
              );
                },
                textColor: Colors.white,
                padding: const EdgeInsets.all(0.0),
                child: Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: <Color>[
                        Color(0xFF0D47A1),
                        Color(0xFF1976D2),
                        Color(0xFF42A5F5),
                      ],
                    ),
                  ),
                  padding: const EdgeInsets.all(10.0),
                  child: const Text('Contato', style: TextStyle(fontSize: 20)),
                ),
              ),
            ],
          ),
        ));
  }
}
