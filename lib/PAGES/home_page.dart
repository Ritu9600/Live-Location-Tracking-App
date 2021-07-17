import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.white54,
        appBar: AppBar(
          elevation: 0.0,
          toolbarHeight: 100.0,
          backgroundColor: Colors.lightBlue,
          title: const Text('Market is up to 2.11% in last 24h', style: TextStyle(
            color: Colors.white,

          )),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(
                text: 'ALL',
              ),
              Tab(
                text: 'TOP GAINERS',
              ),
              Tab(
                text: 'TOP LOSERS',
              ),

            ],

          ),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.search),
              tooltip: 'Show Searchbar',
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('This is a searchbar'))
                );
              },
            ),
          ],
        ),
        body:ListView.builder(
          itemBuilder: (context, index){
            return Container(
              padding: const EdgeInsets.only(top: 10.0, bottom: 10.0, left:10.0, right:10.0),
              child:Card(
              child: Padding(
                padding: const EdgeInsets.only(top: 32.0, bottom: 32.0, left:20.0, right:0.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[

                    /* IconButton(
                   icon: const Icon(Icons.home),
                   color: Colors.red,
                    tooltip: 'Show Searchbar'),*/

                    Text('Bitcoin                                  Rs.2474.55',
                      style: TextStyle(
                          fontSize:20,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    Text('BTC                                                                   -0.78%',
                        style: TextStyle(
                          //padding: const EdgeInsets.all(5.0),
                          fontSize:16,
                          color: Colors.grey.shade600,
                        )),
                  ],
                ),
              ),
            ),
            );
          },
          itemCount: 10,
        ),
      ),
    );
  }
}