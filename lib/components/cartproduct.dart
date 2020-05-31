import 'package:flutter/material.dart';

class Cart_products extends StatefulWidget {
  @override
  _Cart_productsState createState() => _Cart_productsState();
}

class _Cart_productsState extends State<Cart_products> {
  var Products_on_the_cart = [
    {
      "name": "Blazer",
      "picture": "images/products/blazer1.jpeg",
      "price": 85,
      "size": "M",
      "color": "Black",
      "quantity": "1",
    },
    {
      "name": "Red dress",
      "picture": "images/products/dress1.jpeg",
      "price": 110,
      "size": "7",
      "color": "Red",
      "quantity": "1",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
        itemCount: Products_on_the_cart.length,
        itemBuilder: (context, index) {
          return Single_cart_product(
            cart_prod_name: Products_on_the_cart[index]['name'],
            cart_prod_color: Products_on_the_cart[index]['color'],
            cart_prod_picture: Products_on_the_cart[index]['picture'],
            cart_prod_price: Products_on_the_cart[index]['price'],
            cart_prod_quantity: Products_on_the_cart[index]['quantity'],
            cart_prod_size: Products_on_the_cart[index]['size'],
          );
        });
  }
}

class Single_cart_product extends StatelessWidget {
  final cart_prod_name;
  final cart_prod_picture;
  final cart_prod_price;
  final cart_prod_size;
  final cart_prod_color;
  final cart_prod_quantity;

  Single_cart_product(
      {this.cart_prod_name,
      this.cart_prod_picture,
      this.cart_prod_price,
      this.cart_prod_color,
      this.cart_prod_quantity,
      this.cart_prod_size});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
          //=======Leading Section=====
          leading: new Image.asset(
            cart_prod_picture,
            width: 80.0,
            height: 80.0,
          ),

          // ==title section====
          title: new Text(cart_prod_name),
          //==subtitle section
          subtitle: new Column(
            children: <Widget>[
              //ROW INSIDE COLUM
              new Row(
                children: <Widget>[
                  //this section is for the size of the product
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: new Text('Size:'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: new Text(cart_prod_size,
                        style: TextStyle(color: Colors.red)),
                  ),

                  // ===this section is for the product color====
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20.0, 8.0, 8.0, 8.0),
                    child: new Text('Color:'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: new Text(cart_prod_color,
                        style: TextStyle(color: Colors.red)),
                  ),
                ],
              ),

              // ===PRODUCT PRICE=====
              new Container(
                alignment: Alignment.topLeft,
                child: new Text('\$${cart_prod_size}',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0)),
              ),
            ],
          ),
          trailing: new Column(
            children: <Widget>[
              new IconButton(icon: Icon(Icons.arrow_drop_up), onPressed: () {}),
              new Text("$cart_prod_quantity"),
              new IconButton(
                  icon: Icon(Icons.arrow_drop_down), onPressed: () {}),
            ],
          )),
    );
  }
}
