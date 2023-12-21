import 'package:flutter/material.dart';
import 'package:sanberappflutter/Tugas12/Chart_model.dart';
import 'package:sanberappflutter/Tugas12/DrawerScreen.dart';

class Telegram extends StatefulWidget {
  const Telegram({super.key});

  @override
  State<Telegram> createState() => _TelegramState();
}

class _TelegramState extends State<Telegram> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Telegram"),
        actions: <Widget>[
          Padding(padding: EdgeInsets.all(8), child: Icon(Icons.search),)
        ],
        ),
        drawer: const DrawerScreen(),
        body: ListView.separated(
          itemBuilder: (ctx, index)=>ListTile(
            leading: CircleAvatar(
              radius: 28,
              backgroundImage: NetworkImage(items[index].profileUrl!),
            ),
            title: Text(
              items[index].name!,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(items[index].message!),
            trailing: Text(items[index].time!),
          ),
          separatorBuilder: (context, index) => Divider(),
          itemCount: items.length,
        ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.create, color: Colors.white,),
        backgroundColor: Colors.lightBlue,
        onPressed: (){}),
    );
  }
}