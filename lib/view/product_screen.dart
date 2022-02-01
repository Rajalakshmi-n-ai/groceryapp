import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class ProductScreen extends StatefulWidget {
  @override
  _ProductScreenState createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  List product= [
    {
      'name': 'Potato',
      'id': 1,
      'price': 30,
      'available':1,
      'vendor': 'Himachal Pvt Ltd',
      'category':'vegtables',
      'image':'images/potato.jpg'
    },
    {
      'name': 'Banana',
      'id': 2,
      'price': 50,
      'available':1,
      'vendor': 'Organic farms',
      'category':'Fruits',
      'image':'images/banana.jpg'
    },
    {
      'name': 'Drumticks',
      'id': 3,
      'price': 20,
      'available':0,
      'vendor': 'Mallikarjuna farms',
      'category':'vegtables',
      'image':'images/drumstick.jpg'
    },
    {
      'name': 'Orange',
      'id': 4,
      'price': 25,
      'available':1,
      'vendor': 'Himachal Pvt Ltd',
      'category':'Fruits',
      'image':'images/orange.jpg'
    },
  ];
  List<int> counter=[0,0,0,0];
  incrementCounter( int index) {
    setState(() {
      counter[index]++;
    });
  }

  decrementCounter(int index) {
    setState(() {
      counter[index]--;
    });
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(

          title: Center(
            child: Text(
              'Products      ',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
          ),
          backgroundColor: Colors.pink,
        ),
      body: Column(children:[

        ListView.builder(
          itemCount: product.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: height * 0.18,
                width: width,
                child: Card(
                  elevation: 15,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  color: HexColor('#FFFFFF'),
                  child: Row(
                    children: [
                      Padding(
                          padding: const EdgeInsets.all(8.0),
                          child:
                          Container(
                            width: width * 0.25,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(product[index]['image']),
                                    fit: BoxFit.fill)),
                          )
                      ),
                      SizedBox(width: width * 0.01),
                      Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Center(
                              child:Row(children: [ Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child:
                                Text(product[index]['name'],
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold)),
                              ),
                                SizedBox(
                                  width: width * 0.2,
                                ),
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      if (counter[index] > 0) {
                                        decrementCounter(index);
                                      }
                                    });
                                  },
                                  child: Container(
                                    alignment: Alignment.center,
                                    height: MediaQuery.of(context).size.height * 0.03,
                                    width: MediaQuery.of(context).size.width * 0.06,
                                    decoration: BoxDecoration(
                                        color: Color(0xffFFF0D6),
                                        border: Border.all(
                                            width: 0.1, color: Colors.grey)),
                                    child: Text(
                                      "-",
                                      style: TextStyle(fontSize: 25),
                                    ),
                                  ),
                                ),

                                Container(
                                  alignment: Alignment.center,
                                  height: MediaQuery.of(context).size.height * 0.03,
                                  width: MediaQuery.of(context).size.width * 0.06,
                                  decoration: BoxDecoration(
                                      color: Color(0xffFFF0D6),
                                      border:
                                      Border.all(width: 0.1, color: Colors.grey)),
                                  child: Text(
                                    " ${counter[index]}",
                                    style: TextStyle(fontSize: 15),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      incrementCounter(index);
                                    });
                                  },
                                  child: Container(
                                    alignment: Alignment.center,
                                    height: MediaQuery.of(context).size.height * 0.03,
                                    width: MediaQuery.of(context).size.width * 0.06,
                                    decoration: BoxDecoration(
                                        color: Color(0xffFFF0D6),
                                        border: Border.all(
                                            width: 0.1, color: Colors.grey)),
                                    child: Text(
                                      "+",
                                      style: TextStyle(fontSize: 17),
                                    ),
                                  ),
                                ),
                    ]),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Row(children: [
                                Text('\u{20B9}',
                                    style: TextStyle(
                                        fontSize: 11,
                                        fontWeight: FontWeight.bold)),
                                Text(product[index]['price'].toString(),
                                    style: TextStyle(
                                        fontSize: 11,
                                        fontWeight: FontWeight.bold)),
                                SizedBox(
                                  width: width * 0.01,
                                ),
                              ]),
                            ),
                            SizedBox(
                              height: height * 0.01,
                            ),
                            Text(" Product of ${product[index]['vendor']}",
                                style: TextStyle(
                                  fontSize: 10,
                                )),
                            SizedBox(
                              height: height * 0.01,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 50.0),
                              child: InkWell(
                                onTap: () { showDialog(
                                    context: context,
                                    builder: (context) {
                                      return AlertDialog(
                                        title: Text(
                                          "       Json Data",
                                          style: TextStyle(fontWeight: FontWeight.bold),
                                        ),
                                        content: Container(
                                          height: height * 0.2,
                                          width: width,
                                          child: Column(
                                            children: [

                                            ],
                                          ),
                                        ),
                                      );
                                    });},
                                child: Container(
                                  width: width*0.2,
                                  child:Card(
                                  color: Colors.pink,
                                  elevation: 8.0,
                                  shape: RoundedRectangleBorder(
                                    borderRadius:
                                    BorderRadius.circular(12),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text("  Purchase",
                                        style: TextStyle(
                                            fontSize: 12.0,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold)),
                                  ),
                                ),),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          })])
    );

  }
}