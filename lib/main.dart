import 'package:flutter/material.dart';
import 'custom_card.dart';

List<String> givenList = [];

void main() {
  for(int i=1;i<=50;i++){
    givenList.add('item $i');
  }
  runApp(const MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}




class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  List<Widget> widgetList=[];



  @override
  Widget build(BuildContext context) {
    widgetList.clear();
    for(String item in givenList){
      widgetList.add(createWidget(item));
    }

    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('CoderAbhi27', style: TextStyle(color: Colors.white),)),
        backgroundColor: Colors.grey[800],
      ),
      body: Container(
        // width: (MediaQuery.of(context).size.width)/2,
        // height: (MediaQuery.of(context).size.height),
        /*child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: widgetList,
          ),

        ),*/

        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: givenList.map((item) => CustomCard(
              // "asuhaus",
              item,
              (){
                setState(() {
                  givenList.remove(item);
                });
              },
              // item: item,
            )).toList(),
          ),

        ),
      ),

      /*body: Container(
        // width: (MediaQuery.of(context).size.width)/3,
        // height: (MediaQuery.of(context).size.height)/2,
        child: ListView.builder(
          // scrollDirection: Axis.vertical,
          itemCount: givenList.length,
          itemBuilder: (context, index){
            return Card(
              elevation: 10.0,
              shadowColor: Colors.grey[800],
              child: Container(
                padding: EdgeInsets.all(10.0),
                margin: EdgeInsets.all(10.0),
                alignment: Alignment.center,
                child: Text(givenList[index]),
              ),
              color: Colors.amber,
            );
          },
        ),
      ),*/

    );
  }

  Widget createWidget(String item) {
    return Card(
      elevation: 10.0,
      shadowColor: Colors.grey[800],
      child: Container(
          padding: EdgeInsets.all(10.0),
          margin: EdgeInsets.all(10.0),
          alignment: Alignment.center,
          child: Text(item),
        ),
      color: Colors.amber,
    );
  }
}
