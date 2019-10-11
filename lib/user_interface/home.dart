import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        color: Colors.black,
        elevation: 8,
        clipBehavior: Clip.antiAlias,
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.home),
                color: Colors.red,
                iconSize: 35,
                splashColor: Colors.red[200],
                onPressed: () => debugPrint('Pressed'),
              ),
              IconButton(
                icon: Icon(Icons.movie),
                color: Colors.redAccent,
                iconSize: 35,
                splashColor: Colors.red[200],
                onPressed: () => debugPrint('Pressed'),
              ),
              IconButton(
                icon: Icon(Icons.list),
                color: Colors.deepOrange,
                iconSize: 35,
                splashColor: Colors.deepOrange[200],
                onPressed: () => debugPrint('Pressed'),
              ),
              IconButton(
                icon: Icon(Icons.location_on),
                color: Colors.deepOrangeAccent,
                iconSize: 35,
                splashColor: Colors.deepOrangeAccent[200],
                onPressed: () => debugPrint('Pressed'),
              ),
              IconButton(
                icon: Icon(Icons.person_outline),
                color: Colors.orangeAccent,
                iconSize: 35,
                splashColor: Colors.orangeAccent[200],
                onPressed: () => debugPrint('Pressed'),
              ),
            ],
          ),
        ),
      ),
      body: ListView(
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Stack(
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(100), bottomRight: Radius.circular(200)),
                    child: Container(
                      height: _height / 2.5,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/main.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      margin: EdgeInsets.only(top: _height / 3),
                      child: CircleAvatar(
                        radius: 50,
                        child: Icon(Icons.play_arrow, color: Colors.red,size: 55,),
                        backgroundColor: Colors.black,
                      ),
                    ),
                  )
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 20, left: 10, bottom: 10),
                child: Text(
                  'New Movies',
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                      color: Colors.black54
                  ),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Container(
                  margin: EdgeInsets.only(bottom: 10, left: 10, right: 10),
                  child: Row(
                    children: <Widget>[
                      Card(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                        color: Colors.white,
                        elevation: 10,
                        child: Column(
                          children: <Widget>[
                            ClipRRect(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              child: Container(
                                margin: EdgeInsets.only(top: 10),
                                width: _width / 1.5,
                                height: _height / 4,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage('assets/images/1.jpg'),
                                    fit: BoxFit.cover
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              width: _width / 1.5,
                              margin: EdgeInsets.only(left: 10, right: 10, top: 10),
                              child: Text(
                                'This is a new movie, just click on it and stop whining! While you add it, give us all your money '
                                    'and pay for our ridiculously expensive monthly subscription for our below par content.',
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black54,
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
                              child: Row(
                                children: <Widget>[
                                  Icon(Icons.star, color: Colors.orange, size: 30,),
                                  Icon(Icons.star, color: Colors.orange, size: 30,),
                                  Icon(Icons.star, color: Colors.orange, size: 30,),
                                  Icon(Icons.star, color: Colors.orange, size: 30,),
                                  Icon(Icons.star, color: Colors.orange, size: 30,),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(left: 10),),
                      Card(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                        color: Colors.white,
                        elevation: 10,
                        child: Column(
                          children: <Widget>[
                            ClipRRect(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              child: Container(
                                margin: EdgeInsets.only(top: 10),
                                width: _width / 1.5,
                                height: _height / 4,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage('assets/images/2.jpg'),
                                      fit: BoxFit.cover
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              width: _width / 1.5,
                              margin: EdgeInsets.only(left: 10, right: 10, top: 10),
                              child: Text(
                                'This is a new movie, just click on it and stop whining! While you add it, give us all your money '
                                    'and pay for our ridiculously expensive monthly subscription for our below par content.',
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black54,
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
                              child: Row(
                                children: <Widget>[
                                  Icon(Icons.star, color: Colors.orange, size: 30,),
                                  Icon(Icons.star, color: Colors.orange, size: 30,),
                                  Icon(Icons.star, color: Colors.orange, size: 30,),
                                  Icon(Icons.star, color: Colors.orange, size: 30,),
                                  Icon(Icons.star, color: Colors.orange, size: 30,),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(left: 10),),
                      Card(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                        color: Colors.white,
                        elevation: 10,
                        child: Column(
                          children: <Widget>[
                            ClipRRect(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              child: Container(
                                margin: EdgeInsets.only(top: 10),
                                width: _width / 1.5,
                                height: _height / 4,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage('assets/images/3.jpg'),
                                      fit: BoxFit.cover
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              width: _width / 1.5,
                              margin: EdgeInsets.only(left: 10, right: 10, top: 10),
                              child: Text(
                                'This is a new movie, just click on it and stop whining! While you add it, give us all your money '
                                    'and pay for our ridiculously expensive monthly subscription for our below par content.',
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black54,
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
                              child: Row(
                                children: <Widget>[
                                  Icon(Icons.star, color: Colors.orange, size: 30,),
                                  Icon(Icons.star, color: Colors.orange, size: 30,),
                                  Icon(Icons.star, color: Colors.orange, size: 30,),
                                  Icon(Icons.star, color: Colors.orange, size: 30,),
                                  Icon(Icons.star, color: Colors.orange, size: 30,),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(left: 10),),
                      Card(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                        color: Colors.white,
                        elevation: 10,
                        child: Column(
                          children: <Widget>[
                            ClipRRect(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              child: Container(
                                margin: EdgeInsets.only(top: 10),
                                width: _width / 1.5,
                                height: _height / 4,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage('assets/images/4.jpg'),
                                      fit: BoxFit.cover
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              width: _width / 1.5,
                              margin: EdgeInsets.only(left: 10, right: 10, top: 10),
                              child: Text(
                                'This is a new movie, just click on it and stop whining! While you add it, give us all your money '
                                    'and pay for our ridiculously expensive monthly subscription for our below par content.',
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black54,
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
                              child: Row(
                                children: <Widget>[
                                  Icon(Icons.star, color: Colors.orange, size: 30,),
                                  Icon(Icons.star, color: Colors.orange, size: 30,),
                                  Icon(Icons.star, color: Colors.orange, size: 30,),
                                  Icon(Icons.star, color: Colors.orange, size: 30,),
                                  Icon(Icons.star, color: Colors.orange, size: 30,),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(left: 10),),
                      Card(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                        color: Colors.white,
                        elevation: 10,
                        child: Column(
                          children: <Widget>[
                            ClipRRect(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              child: Container(
                                margin: EdgeInsets.only(top: 10),
                                width: _width / 1.5,
                                height: _height / 4,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage('assets/images/5.jpg'),
                                      fit: BoxFit.cover
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              width: _width / 1.5,
                              margin: EdgeInsets.only(left: 10, right: 10, top: 10),
                              child: Text(
                                'This is a new movie, just click on it and stop whining! While you add it, give us all your money '
                                    'and pay for our ridiculously expensive monthly subscription for our below par content.',
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black54,
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
                              child: Row(
                                children: <Widget>[
                                  Icon(Icons.star, color: Colors.orange, size: 30,),
                                  Icon(Icons.star, color: Colors.orange, size: 30,),
                                  Icon(Icons.star, color: Colors.orange, size: 30,),
                                  Icon(Icons.star, color: Colors.orange, size: 30,),
                                  Icon(Icons.star, color: Colors.orange, size: 30,),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
