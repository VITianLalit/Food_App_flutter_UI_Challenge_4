import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey[100],
          elevation: 0,
          leading: Icon(null),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.shopping_basket,
                color: Colors.grey[800],
              ),
            )
          ],
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Food Delivery',
                      style: TextStyle(
                          color: Colors.grey[80],
                          fontWeight: FontWeight.bold,
                          fontSize: 30),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 50,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          makeCategory(isActive: true, title: 'Pizza'),
                          makeCategory(isActive: false, title: 'Burger'),
                          makeCategory(isActive: false, title: 'Drink'),
                          makeCategory(isActive: false, title: 'Desert'),
                          makeCategory(isActive: false, title: 'Roti'),
                        ],
                      ),
                    ),
                    SizedBox(height: 10,),
                  ],
                ),
              ),
              Padding(
                  padding: EdgeInsets.all(20),
                child: Text('Free Delivery', style: TextStyle(color: Colors.grey[700], fontSize: 20, fontWeight: FontWeight.bold),),
              ),
              Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        makeItem(images: 'assets/images/one.jpg'),
                        makeItem(images: 'assets/images/one.jpg'),
                        makeItem(images: 'assets/images/one.jpg'),
                      ],
                    ),
                  )
              ),
              SizedBox(height: 30,),
            ],
          ),
        ));
  }

  Widget makeCategory({isActive, title}) {
    return AspectRatio(
      aspectRatio: isActive ? 3 : 2.5 / 1,
      child: Container(
        margin: EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
          color: isActive ? Colors.yellow[700] : Colors.white,
          borderRadius: BorderRadius.circular(50),
        ),
        child: Align(
            child: Text(
          title,
          style: TextStyle(
              color: isActive ? Colors.white : Colors.grey[500],
              fontSize: 18,
              fontWeight: isActive ? FontWeight.bold : FontWeight.w100),
        )),
      ),
    );
  }
  Widget makeItem({images}){
    return AspectRatio(
      aspectRatio: 1/1.6,
      child: GestureDetector(
        child: Container(
          margin: EdgeInsets.only(right: 20),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
              image: AssetImage(images),
              fit: BoxFit.cover,
            )
          ),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                stops: [.2,.9],
                colors: [
                  Colors.black.withOpacity(.9),
                  Colors.black.withOpacity(.3),
                ]
              )
            ),
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: Icon(Icons.favorite,color: Colors.white,),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("\$ 15.00", style: TextStyle(color: Colors.white, fontSize: 40, fontWeight: FontWeight.bold),),
                      SizedBox(height: 10,),
                      Text("Vegetarian Pizza", style: TextStyle(color: Colors.white, fontSize: 20),)
                    ],
                  )
                ],
              ),
            ),
          ),
        ),

      ),);
  }
}
