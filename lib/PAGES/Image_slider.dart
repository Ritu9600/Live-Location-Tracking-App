import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:stock_app_profile_page/PAGES/detail_page.dart';
import 'package:stock_app_profile_page/PAGES/pages.dart';
import 'package:stock_app_profile_page/PAGES/profile.dart';
import 'package:stock_app_profile_page/PAGES/login_page.dart';
import 'package:stock_app_profile_page/PAGES/bank_account_details.dart';
class Products extends StatefulWidget{
  @override
  _ProductsState createState() => _ProductsState();
}
class Database {
 static var product_list = [
    {
      "PropertyName": "Taj Towers",
      //"picture": "Images/1.jpg",
      "sqft": 1000 ,
      "price": 300,
    },
    {
      "PropertyName": "xyz2",
      //"picture": "Images/1.jpg",
      "sqft": 1000,
      "price": 400,
    },
    {
      "PropertyName": "xyz",
      //"picture": "Images/1.jpg",
      "sqft": 1000,
      "price": 400,

    },
    {
      "PropertyName": "xyz1",
      //"picture": "Images/1.jpg",
      "sqft": 1000,
      "price": 400,
    },


  ];
}
class _ProductsState extends State<Products> {
  var x = Database();
 /* var product_list = [
    {
      "PropertyName": "Taj Towers",
      //"picture": "Images/1.jpg",
      "sqft": 1000 ,
      "price": 300,
    },
    {
      "PropertyName": "xyz2",
      //"picture": "Images/1.jpg",
      "sqft": 1000,
      "price": 400,
    },
    {
      "PropertyName": "xyz",
      //"picture": "Images/1.jpg",
      "sqft": 1000,
      "price": 400,

    },
    {
      "PropertyName": "xyz1",
      //"picture": "Images/1.jpg",
      "sqft": 1000,
      "price": 400,
    },


  ];*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
            backgroundColor: Colors.lightBlue,
            title: Text('Menu'),
            actions: <Widget>[
              new IconButton(
                  icon: Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                  onPressed: () {}),
              new IconButton(
                  icon: Icon(
                    Icons.shopping_cart,
                    color: Colors.white,
                  ),
                  onPressed: () {}),
            ]

        ),

        drawer: new Drawer (
          child: ListView(
            children: <Widget>[
              Container(
                color: Colors.lightBlue,
              child: new UserAccountsDrawerHeader(

                accountName: new Text ("One Notch",style: TextStyle(fontSize: 18.0)),
                accountEmail: new Text('onenotch21@gmail.com',style: TextStyle(fontSize: 15.0)),
                currentAccountPicture: new CircleAvatar(
                  radius: 20.0,
                  backgroundColor: Colors.blueGrey,
                  //backgroundImage: new NetworkImage("
                  // "),
                ),
              ),
              ),
              ListTile(
                leading: Icon(Icons.person),
                title: Text('Profile', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.grey)),
                onTap:  (){
                  Navigator.push(context, new MaterialPageRoute(
                  builder: (BuildContext context) => new ProfilePage(),
                  ));
                },
              ),
              ListTile(
                leading: Icon(Icons.account_balance),
                title: Text('Account', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.grey)),
                onTap:  (){
                  Navigator.push(context, new MaterialPageRoute(
                    builder: (BuildContext context) => new BankAccount(),
                  ));
                },
              ),
              ListTile(
                leading: Icon(Icons.attach_money),
                title: Text('Bank Details', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.grey)),
                onTap:  (){
                  Navigator.push(context, new MaterialPageRoute(
                    builder: (BuildContext context) => new BankAccount(),
                  ));
                },
              ),
              ListTile(
                leading: Icon(Icons.money_outlined),
                title: Text('Investment', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.grey)),
                onTap:  (){
                  Navigator.push(context, new MaterialPageRoute(
                    builder: (BuildContext context) => new BankAccount(),
                  ));
                },
              ),
              ListTile(
                leading: Icon(Icons.settings_applications),
                title: Text('Settings', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.grey)),
                onTap:  (){
                  Navigator.push(context, new MaterialPageRoute(
                    builder: (BuildContext context) => new ProfilePage(),
                  ));
                },
              ),
              ListTile(
                leading: Icon(Icons.logout),
                title: Text('Logout', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.grey)),
                onTap:  (){
                  Navigator.push(context, new MaterialPageRoute(
                    builder: (BuildContext context) => new Register(),
                  ));
                },
              ),
            ],

          ),
        ),

        body:
        new GridView.builder(
            itemCount: Database.product_list.length,
            gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1),
            itemBuilder: (BuildContext context, int index){
              return Single_prod(
                prod_PropertyName:  Database.product_list[index]['PropertyName'],
                // prod_picture: product_list[index]['picture'],
                prod_sqft: Database.product_list[index]['sqft'],
                prod_price: Database.product_list[index]['price'],

              );
            }
        )
    );
  }
}
class Single_prod extends StatelessWidget{
  final prod_PropertyName;
  final prod_picture;
  final prod_sqft;
  final prod_price;
  Single_prod({
    this.prod_PropertyName,
    this.prod_picture,
    this.prod_sqft,
    this.prod_price,
  }
      );
  @override
  Widget build(BuildContext context){
    return Card(
      child: Hero(
        tag: prod_PropertyName,
                child: Material(
          child: InkWell(onTap: (){},
            child: GridTile(
              footer: Container(
                height: 80.0,
                color: Colors.white70,
                child: ListTile(
                  leading: RaisedButton(
                    visualDensity: null,
                    child: Text(prod_PropertyName, style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.lightBlue),),
                    color: Colors.white,
                    onPressed: (){
                    Navigator.of(context).push (MaterialPageRoute(
                        builder : (context) => Detail()
                    ));
                  },
                ),
                  //child:Text(prod_PropertyName, style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.blueGrey),

                 // ),


                  title: Text("          \Sqft:$prod_sqft",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20, color: Colors.lightBlue)
                  ),
                  trailing: Text("\$$prod_price",style: TextStyle(fontSize: 20,color: Colors.lightBlue,fontWeight: FontWeight.bold),
                  ),

                ),
              ),
              child: new Carousel(
                boxFit: BoxFit.contain,
                images: [
                  AssetImage('images/1.jpg'),
                  AssetImage('images/2.jpg'),
                  AssetImage('images/3.jpg'),
                  AssetImage('images/1.jpg'),
                ],
                autoplay: false,
                // animationCurve: Curves.fastOutSlowIn,
                // animationDuration: Duration(milliseconds: 1000),
                dotSize: 4.0,
                indicatorBgPadding: 4.0,
              ),
            ),
          ),
        ),
      ),
    );
  }
}


