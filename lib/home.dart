import 'package:flutter/material.dart';

class Myhome extends StatefulWidget {
  const Myhome({super.key});

  @override
  State<Myhome> createState() => _MyhomeState();
}

class _MyhomeState extends State<Myhome> {
  final List hotelList =[ 
    {
    'title' : 'Grand royl Hotel',
    'place' : 'Webley London',
    'distance' : 2,
    'review' : 36,
    'picture' : 'images/hotel1.jpg',
    'price' : '188',
  },
   {
    'title' : 'Grand royl Hotel',
    'place' : 'Webley London',
    'distance' : 3,
    'review' : 13,
    'picture' : 'images/hotel2.jpg',
    'price' : '188',
  },
   {
    'title' : 'Grand royl Hotel',
    'place' : 'Webley London',
    'distance' : 6,
    'review' : 88,
    'picture' : 'images/hotel1.jpg',
    'price' : '188',
  },
   {
    'title' : 'Grand royl Hotel',
    'place' : 'Webley London',
    'distance' : 11,
    'review' : 34,
    'picture' : 'images/hotel2.jpg',
    'price' : '188',
  },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Color.fromARGB(255, 43, 42, 42),
            size: 20,
          ),
          onPressed: null,
        ),
        title: const Text(
          'Explore',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        actions: const [
          IconButton(
            icon: Icon(
              Icons.favorite_outline_rounded,
              color: Color.fromARGB(255, 43, 42, 42),
              size: 20,
            ),
            onPressed: null,
          ),
          IconButton(
            icon: Icon(
              Icons.place,
              color: Colors.black,
              size: 20,
            ),
            onPressed: null,
          ),
        ],
        centerTitle: true,
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          Container(
            color: Colors.grey[200],
            padding: EdgeInsets.fromLTRB(10, 25, 10, 10),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 50,
                        width: 80,
                        padding: EdgeInsets.only(left: 5),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.grey,
                                blurRadius: 4,
                                offset: Offset(0, 3))
                          ],
                        ),
                        child: const TextField(
                          decoration: InputDecoration(
                            hintText: 'London',
                            contentPadding: EdgeInsets.all(10),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: const BoxDecoration(
                        color: Colors.green,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey,
                              blurRadius: 4,
                              offset: Offset(0, 4))
                        ],
                        borderRadius: BorderRadius.all(
                          Radius.circular(25),
                        ),
                      ),
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Icon(
                          Icons.search,
                          size: 26,
                        ),
                        style: ElevatedButton.styleFrom(
                          shape: CircleBorder(),
                          padding: EdgeInsets.all(10),
                        ),
                      ),
                    )
                  ],
                ),
                // SizedBox(height: 50,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: EdgeInsets.all(10),
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Choose Date",
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text("12 Dec - 22 Dec")
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(10),
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Number of Rooms"),
                          SizedBox(
                            height: 8,
                          ),
                          Text("1 Room - 2 Adults")
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            color: Colors.white,
            child: Column(
              children: [
                Container(
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("550 hotels founds"),
                      Row(
                        children: [
                          Text("Filters"),
                          IconButton(
                            onPressed: null,
                             icon: Icon(Icons.filter_list_outlined),),
                        ],
                      )
                    ],
                  ),
                ),
                Column(
                  children: 
                    hotelList.map((hotel){ 
                      return Container(
                        child: Image.asset(hotel['picture']),

                      );

                    }).toList()

                ),
              ],
            ),
          )
        ],
      )),
    );
  }
}
