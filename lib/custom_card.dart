import 'package:flutter/material.dart';


class CustomCard extends StatelessWidget {
  String item;
  Function() delete;
  // String loda;
  // String loda='';
  // CustomCard(String item, void Function() delete){
  //   this.item = item;
  //   this.delete = delete;
  // }

  CustomCard(this.item, this.delete);

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 150.0,
      child: Card(
        elevation: 10.0,
        shadowColor: Colors.grey[800],
        child: ListTile(
          onTap: (){},
          // leading: CircleAvatar(
          //   backgroundImage: AssetImage('assets/profile.jpg'),
          //   // radius: 50.0,
          // ),
          leading: Container(
            padding: EdgeInsets.only(bottom: 10.0),
            child: ElevatedButton(
              onPressed: delete,
              child: Icon(
                Icons.delete,

              ),
            ),
          ),
          subtitle: Text('mera loda '),
          title: Column(
            children: [
              Container(
                padding: EdgeInsets.all(5.0),
                // margin: EdgeInsets.all(10.0),
                alignment: Alignment.center,
                child: Text(item),
              ),

            ],
          ),
        ),
        color: Colors.amber,
      ),
    );;
  }
}
