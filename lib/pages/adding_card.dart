import 'package:flutter/material.dart';

class AddingCard extends StatefulWidget {
  const AddingCard({super.key});

  @override
  State<AddingCard> createState() => _AddingCardState();
}

class _AddingCardState extends State<AddingCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Card"),
        backgroundColor: Colors.white,
      ),
      body: Container(
        color: Colors.white,
        padding: EdgeInsets.all(30),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [

            Image(
            width: 300,
            height: 150,
            image: AssetImage("assets/images/visa_add.jpg"),
            fit: BoxFit.cover,
            ),
            SizedBox(height: 30,),

            Text("Enter expiration date",
            style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold),),
            SizedBox(height: 50,),

            TextField(
              decoration: InputDecoration(
                hintText: "Enter card number",
                hintStyle: TextStyle(color: Colors.grey),
              ),
            ),
            SizedBox(height: 20,),

            TextField(
              decoration: InputDecoration(
                hintText: "Enter card expiration date",
                hintStyle: TextStyle(color: Colors.grey),
              ),
            ),

            SizedBox(height: 20,),

            Text("* Only VISA, MasterCard, issued cards supported"),
          ],
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.indigoAccent,
                borderRadius: BorderRadius.circular(10),
              ),
              child: MaterialButton(
                onPressed: () {},
                child: Text(
                  "Save Card",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20
                  ),
                ),
              ),
            ),
          ]
        ),

      ),
    );
  }
}
