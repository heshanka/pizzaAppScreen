import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Container(
          alignment: Alignment.center,
          color: Colors.deepOrange[300],
          padding: EdgeInsets.only(top: 80.0, left: 15.0),
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(
                    child: Text(
                      "Margarita",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 30.0,
                        decoration: TextDecoration.none,
                        fontFamily: 'Oxygen',
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      "Tomato, Mozarella and Basil",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20.0,
                        decoration: TextDecoration.none,
                        fontFamily: 'Oxygen',
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Text(
                      "Marinara",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 30.0,
                        decoration: TextDecoration.none,
                        fontFamily: 'Oxygen',
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      "Tomato, Garlic",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20.0,
                        decoration: TextDecoration.none,
                        fontFamily: 'Oxygen',
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 75.0),
                child: PizzaImageWidget(),
              ),
              OrderButton(),
            ],
          )),
    );
  }
}

class PizzaImageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    AssetImage pizzaAsset = AssetImage('images/pizzaimg.png');
    Image image = Image(
      image: pizzaAsset,
      width: 250.0,
      height: 250.0,
    );
    return Container(
      child: image,
    );
  }
}

class OrderButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    var button = Container(
      margin: EdgeInsets.only(
        top: 50.0,
      ),
      child: ButtonTheme(
        minWidth: 170.0,
        height: 50.0,
        child: RaisedButton(
          shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(50.0)),
          child: Text("Order your Pizza!", style: TextStyle(fontSize: 18.0),),
          color: Colors.lightGreen,
          elevation: 5.0,
          onPressed: () {
            order(context);
          },
        ),
      ),
    );
    return button;
  }
}

void order(BuildContext context) {
  var alert = AlertDialog(
    title: Text('Order Completed'),
    content: Text('Thanks for your order'),
  );
  showDialog(
      context: context,
      builder: (BuildContext context) => alert) ;
}
