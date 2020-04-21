import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class OnBoarding extends StatefulWidget {
  @override
  _OnBoardingState createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          PageView.builder(
            itemBuilder: ( context , index){
              return Stack(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: ExactAssetImage('assets/images/bg.png'),
                          fit: BoxFit.cover
                      ),
                    ) ,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(Icons.ac_unit),
                      Text('Welcome'),
                      Text('Making frindes easy as waving Making frindes easy as waving'),
                    ],
                  )
                ],
              );
            },
            itemCount: 4,
          ),
          Align(//بمعنى المحاذاه
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 24),
              child: RaisedButton(
                color: Colors.red.shade800,
                child: Text('GET STARTED',style: TextStyle(color:Colors.white),
                ),
                onPressed: (){}, //بمعنى عند الدعس
              ),
            ),
          )
        ],
      ),
    );
  }
}
