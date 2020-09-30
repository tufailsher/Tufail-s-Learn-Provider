import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_project/Screens/AddItemScreen.dart';
import 'package:provider_project/Screens/AddNotifierItem.dart';
class FirstRoute extends StatefulWidget {
  @override
  _FirstRouteState createState() => _FirstRouteState();
}

class _FirstRouteState extends State<FirstRoute> {
  @override
  Widget build(BuildContext context) {
    String title = 'home';
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text("$title"),
          actions: [
            IconButton(icon: Icon(Icons.add), onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>AddItemScreen()));
            }),
          ],
        ),
        body: Center(
          child: Column(
            children: [
              Expanded(
                  child:Consumer<AddNotifierItem>(
                      builder: (context,addNotifierItem,_){
                        return ListView.builder(
                          itemCount: addNotifierItem.listItem.length,
                            itemBuilder: (context,index){
                            return Padding(
                                padding: EdgeInsets.all(15.0),
                              child: Text(
                                addNotifierItem.listItem[index].itemName,
                                style: TextStyle(
                                  fontSize: 20.0,
                                  color: Colors.black,
                                ),
                              ),
                            );

                            });
                      }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}