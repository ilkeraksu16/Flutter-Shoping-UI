import 'package:flutter/material.dart';
import 'package:shoping/shoping.dart';

void main() => runApp(
  MaterialApp(
    home: Shoping(),
  )
);

class Shoping extends StatefulWidget {
  @override
  _ShopingState createState() => _ShopingState();
}

class _ShopingState extends State<Shoping> with SingleTickerProviderStateMixin{
 
  TabController tabController;

  @override
  void initState() {
    
    super.initState();
    tabController =TabController(vsync: this, length: 3);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
         child: Column(
        children: <Widget>[
          SizedBox(height: 50.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                height: 80.0,
                width: 100.0,
                decoration: BoxDecoration(
                  color: Colors.blue.withOpacity(0.6),
                  borderRadius: BorderRadius.only(topRight: Radius.circular(20.0),bottomRight: Radius.circular(20))
                ),
                child: Icon(Icons.add,color: Colors.white,size: 30.0,),
              ),
              Container(
                height: 80.0,
                decoration: BoxDecoration(
                  color: Colors.lightBlue.withOpacity(0.1),
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0),bottomLeft: Radius.circular(20.0)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'İlker Aksu',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontFamily: 'Quicksand',
                          color: Colors.black,
                          fontWeight: FontWeight.w300,
                          decoration: TextDecoration.none
                        ),
                      ),
                      SizedBox(height: 5.0,),
                      Text(
                        '28 Koleksiyon - 43 Takipçi',
                        style: TextStyle(
                          fontSize: 15.0,
                          fontFamily: 'Quicksand',
                          color: Colors.grey,
                          fontWeight: FontWeight.w300,
                          decoration: TextDecoration.none,
                        ),
                      ),
                    ],
                  ), 
                ),
              ),
            ],
          ),
          SizedBox(height: 50,),
          Container(
            height: MediaQuery.of(context).size.height - 230.0,
            color: Color(0XFF131433),
            child: Column(
              children: <Widget>[
                Container(
                  height: 80.0,
                  padding: EdgeInsets.only(left: 20.0,right: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'Yeni Galeri',
                        style: TextStyle(
                          fontSize: 25.0,
                          fontFamily: 'Quicksand',
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      Icon(Icons.favorite_border,color: Colors.grey,size: 25,),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10.0),
                  child: TabBar(
                    controller: tabController,
                    indicatorColor: Colors.red.withOpacity(0.5),
                    labelColor: Colors.white,
                    unselectedLabelColor: Colors.grey.withOpacity(0.6),
                    tabs: <Widget>[
                      Tab(
                        child: Container(
                          child: Text(
                            'Paylaşım',
                            style: TextStyle(
                              fontSize: 18.0,
                              fontFamily: 'Quicksand',
                            ),
                          ),
                        ),
                      ),
                      Tab(
                        child: Container(
                          child: Text(
                            'Popüler',
                            style: TextStyle(
                              fontSize: 18.0,
                              fontFamily: 'Quicksand',
                            ),
                          ),
                        ),
                      ),
                      Tab(
                        child: Container(
                          child: Text(
                            'En Son',
                            style: TextStyle(
                              fontSize: 18.0,
                              fontFamily: 'Quicksand',
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                    height: MediaQuery.of(context).size.height-358.0,
                  child: ListView(
                    children: <Widget>[
                      Container(
                        height: MediaQuery.of(context).size.height - 358.0,
                        child:TabBarView(
                          controller: tabController,
                          children: <Widget>[
                            Deneme(),
                            Deneme(),
                            Deneme(),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),        
              ],
            ),
          ),
        ],
      )
      ),
      bottomNavigationBar: makeBottomBar,
    );
  }

  
  final makeBottomBar = Container(
    height: 50.0,
    child: BottomAppBar(
      color: Color.fromRGBO(35, 44, 84, 1.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          IconButton(
            onPressed: (){},
            icon: Icon(Icons.home,color: Colors.white,),
          ),
          IconButton(
            onPressed: (){},
            icon: Icon(Icons.import_contacts,color: Colors.white,),
          ),
          IconButton(
            onPressed: (){},
            icon: Icon(Icons.business,color: Colors.white,),
          ),
        ],
      ),
    ),
  );
  
}

