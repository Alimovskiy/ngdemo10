import 'package:flutter/material.dart';
import 'package:ngdemo10/pages/adding_card.dart';

class CardList extends StatefulWidget {
  const CardList({super.key});

  @override
  State<CardList> createState() => _CardListState();
}

class _CardListState extends State<CardList> {

  _callAddingCard(){
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => AddingCard()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Card List", style: TextStyle(fontWeight: FontWeight.bold),),
        backgroundColor: Colors.white,
      ),
      body: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.black12,
            width: 1,
            style: BorderStyle.solid
          )
        ),
        padding: EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(bottom: 10),
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.all(10),
                          width: 110,
                          height: 70,
                          // color: Colors.indigoAccent,
                          decoration: BoxDecoration(
                            color: Colors.indigoAccent,
                            borderRadius: BorderRadius.circular(10),
                            ),
                          child: Image(
                            image: AssetImage("assets/images/mc.png"),
                            fit: BoxFit.cover,
                          ),
                          ),

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("**** **** **** 9275", style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),),
                            Text("11/25", style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),),
                          ]
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(bottom: 10),
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.all(10),
                          width: 110,
                          height: 70,
                          // color: Colors.indigoAccent,
                          decoration: BoxDecoration(
                            color: Colors.indigoAccent,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Image(
                            image: AssetImage("assets/images/visa.png"),
                            fit: BoxFit.cover,
                          ),
                        ),

                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("**** **** **** 9275", style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),),
                              Text("12/25", style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),),
                            ]
                        ),
                      ],
                    ),
                  ),
                ],

              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.indigoAccent,
                borderRadius: BorderRadius.circular(10),
              ),
              child: MaterialButton(
                onPressed: () {
                  _callAddingCard();
                },
                child: Text(
                  "Add Card",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
