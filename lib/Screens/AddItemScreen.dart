import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_project/Screens/AddNotifierItem.dart';
class AddItemScreen extends StatelessWidget {
  TextEditingController _textEditingController= TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text("Add Item"),
          actions: [
            IconButton(icon: Icon(Icons.close), onPressed: (){
              Navigator.pop(context);
            })
          ],
        ),
        body: Center(
          child: Column(
            children: [
              TextField(
                controller: _textEditingController,
              ),
              RaisedButton(
                child: Text("Add Item"),
                onPressed: ()async{
                if(_textEditingController.text.isEmpty){
                  return;
                }
                await Provider.of<AddNotifierItem>(context, listen: false)
                    .addItem(_textEditingController.text);
                Navigator.pop(context);

              },
              )
            ],
          ),
        ),
      ),
    );
  }
}
