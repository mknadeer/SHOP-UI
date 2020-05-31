import 'package:flutter/material.dart';

import '../main.dart';

class ProductDetails extends StatefulWidget {
  final product_detail_name;
  final product_detail_price;
  final product_detail_oldprice;
  final product_detail_picture;

  ProductDetails(
      {this.product_detail_name,
      this.product_detail_oldprice,
      this.product_detail_picture,
      this.product_detail_price});

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          elevation: 0.0,
          backgroundColor: Colors.red,
          title: InkWell(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => HomePage()));
                              },
                              child: Text('Fashionstore'),
                            ),
                            actions: <Widget>[
                              new IconButton(
                                  icon: Icon(Icons.search, color: Colors.white),
                                  onPressed: () {}),
                            ],
                          ),
                          body: new ListView(
                            children: <Widget>[
                              new Container(
                                  height: 300.0,
                                  child: GridTile(
                                      child: Container(
                                        color: Colors.white,
                                        child: Image.asset(widget.product_detail_picture),
                                      ),
                                      footer: new Container(
                                          color: Colors.white70,
                                          child: ListTile(
                                              leading: new Text(widget.product_detail_name,
                                                  style: TextStyle(
                                                      fontWeight: FontWeight.bold,
                                                      fontSize: 16.0)),
                                              title: new Row(
                                                children: <Widget>[
                                                  Expanded(
                                                      child: new Text(
                                                          "\$${widget.product_detail_oldprice}",
                                                          style: TextStyle(
                                                              color: Colors.grey,
                                                              decoration:
                                                                  TextDecoration.lineThrough))),
                                                  Expanded(
                                                      child: new Text(
                                                          "\$${widget.product_detail_price}",
                                                          style: TextStyle(
                                                              fontWeight: FontWeight.bold,
                                                              color: Colors.red)))
                                                ],
                                              ))))),
                              //      ======The first buttons===
                              Row(
                                children: <Widget>[
                                  // ====the size button====
                                  Expanded(
                                    child: MaterialButton(
                                        onPressed: () {
                                          showDialog(
                                            context: context,
                                            builder: (context) {
                                              return new AlertDialog(
                                                title: new Text('size'),
                                                content: new Text('choose the size'),
                                                actions: <Widget>[
                                                  new MaterialButton(
                                                    onPressed: () {
                                                      Navigator.of(context).pop(context);
                                                    },
                                                    child: new Text('close'),
                                                  )
                                                ],
                                              );
                                            },
                                          );
                                        },
                                        color: Colors.white,
                                        textColor: Colors.grey,
                                        elevation: 0.2,
                                        child: Row(
                                          children: <Widget>[
                                            Expanded(child: new Text('size')),
                                            Expanded(
                                              child: new Icon(Icons.arrow_drop_down),
                                            )
                                          ],
                                        )),
                                  ),
                  
                                  // ====the color button====
                                  Expanded(
                                    child: MaterialButton(
                                        onPressed: () {
                                          showDialog(
                                            context: context,
                                            builder: (context) {
                                              return new AlertDialog(
                                                title: new Text('color'),
                                                content: new Text('choose a color'),
                                                actions: <Widget>[
                                                  new MaterialButton(
                                                    onPressed: () {
                                                      Navigator.of(context).pop(context);
                                                    },
                                                    child: new Text('close'),
                                                  )
                                                ],
                                              );
                                            },
                                          );
                                        },
                                        color: Colors.white,
                                        textColor: Colors.grey,
                                        elevation: 0.2,
                                        child: Row(
                                          children: <Widget>[
                                            Expanded(child: new Text('Color')),
                                            Expanded(
                                              child: new Icon(Icons.arrow_drop_down),
                                            )
                                          ],
                                        )),
                                  ),
                  
                                  // ====the qty button====
                                  Expanded(
                                    child: MaterialButton(
                                        onPressed: () {
                                          showDialog(
                                            context: context,
                                            builder: (context) {
                                              return new AlertDialog(
                                                title: new Text('Quantity'),
                                                content: new Text('choose the quantity'),
                                                actions: <Widget>[
                                                  new MaterialButton(
                                                    onPressed: () {
                                                      Navigator.of(context).pop(context);
                                                    },
                                                    child: new Text('close'),
                                                  )
                                                ],
                                              );
                                            },
                                          );
                                        },
                                        color: Colors.white,
                                        textColor: Colors.grey,
                                        elevation: 0.2,
                                        child: Row(
                                          children: <Widget>[
                                            Expanded(child: new Text('Quantity')),
                                            Expanded(
                                              child: new Icon(Icons.arrow_drop_down),
                                            )
                                          ],
                                        )),
                                  ),
                                ],
                              ),
                  
                              //      ======The second buttons===
                              Row(
                                children: <Widget>[
                                  // ====the buy button====
                                  Expanded(
                                    child: MaterialButton(
                                      onPressed: () {},
                                      color: Colors.red,
                                      textColor: Colors.white,
                                      elevation: 0.2,
                                      child: new Text('Buy now'),
                                    ),
                                  ),
                                  new IconButton(
                                      icon: Icon(
                                        Icons.add_shopping_cart,
                                        color: Colors.red,
                                      ),
                                      onPressed: () {}),
                                  new IconButton(
                                      icon: Icon(
                                        Icons.favorite_border,
                                        color: Colors.red,
                                      ),
                                      onPressed: () {}),
                                ],
                              ),
                              Divider(),
                              new ListTile(
                                  title: new Text('Prodcut Details'),
                                  subtitle: new Text('Alhamdulillah')),
                              Divider(),
                              new Row(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                                    child: new Text(
                                      'product name',
                                      style: TextStyle(
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                      padding: EdgeInsets.all(5.0),
                                      child: new Text(widget.product_detail_name)),
                                ],
                              ),
                  
                              new Row(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                                    child: new Text(
                                      'product brand',
                                      style: TextStyle(
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ),
                                  // REMEMBER TO CREATE THE PRODUCT BRAND
                                  Padding(
                                      padding: EdgeInsets.all(5.0), child: new Text('Brand_X')),
                                ],
                              ),
                  
                              // ADD THE PRODUCT CONDITION
                  
                              new Row(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                                    child: new Text(
                                      'product condition',
                                      style: TextStyle(
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ),
                                  Padding(padding: EdgeInsets.all(5.0), child: new Text('NEW')),
                                ],
                              ),
                              Divider(),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: new Text('Similiar products'),
                              ),
                  
                  //    SIMILIAR PRODUCT SECTION
                  Container(
                    height: 360.0,
                    child: Similiar_Products(),
                  ),
                            ],
                          ));
                    }
                  
                    HomePage() {}
}

class Similiar_Products extends StatefulWidget {
  @override
  _Similiar_ProductsState createState() => _Similiar_ProductsState();
}

class _Similiar_ProductsState extends State<Similiar_Products> {
  var product_list = [
    {
      "name": "Blazer",
      "picture": "images/products/blazer1.jpeg",
      "oldprice": 120,
      "price": 85,
    },
    {
      "name": "Red dress",
      "picture": "images/products/dress1.jpeg",
      "oldprice": 100,
      "price": 50,
    },
    {
      "name": "Aha Pants",
      "picture": "images/products/pants2.jpeg",
      "oldprice": 400,
      "price": 250,
    },
    {
      "name": "Woh pants",
      "picture": "images/products/pants1.jpg",
      "oldprice": 300,
      "price": 150,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate:
            new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext, int index) {
          return Similiar_Single_prod(
            product_name: product_list[index]['name'],
            prod_picture: product_list[index]['picture'],
            prod_oldprice: product_list[index]['old_price'],
            prod_price: product_list[index]['price'],
          );
        });
  }
}

class Similiar_Single_prod extends StatelessWidget {
  final product_name;
  final prod_picture;
  final prod_oldprice;
  final prod_price;

  Similiar_Single_prod({
    this.product_name,
    this.prod_picture,
    this.prod_oldprice,
    this.prod_price,
  });
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
        tag: new Text('hero 1'),
        child: Material(
          child: InkWell(
            onTap: () => Navigator.of(context).push(new MaterialPageRoute(
                //here we are passing the value of the product to the proddetails page
                builder: (context) => new ProductDetails(
                      product_detail_name: product_name,
                      product_detail_price: prod_price,
                      product_detail_oldprice: prod_oldprice,
                      product_detail_picture: prod_picture,
                    ))),
            child: GridTile(
              footer: Container(
                color: Colors.white,
                child: new Row(
                  children: <Widget>[
                    Expanded(
                      child: new Text(product_name,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16.0)),
                    ),
                    Text("\$${prod_price}",
                        style: TextStyle(
                            color: Colors.red, fontWeight: FontWeight.bold))
                  ],
                ),
              ),
              child: Image.asset(prod_picture, fit: BoxFit.cover),
            ),
          ),
        ),
      ),
    );
  }
}
