import 'package:flutter/material.dart';
import 'package:prov3/Model.dart';
import 'package:prov3/WriteANote.dart';

import 'package:provider/provider.dart';

class YourNotes extends StatelessWidget {
  const YourNotes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Your Notes"),),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => WriteANote(),
        ));
      }
      ),
      body: Consumer<Mymodel>(
        builder: (context, M, child) {
          return ListView.builder(
            itemCount: M.notes.length,
            itemBuilder: (context, index) {
              return Center(child: Text(M.notes[index].note));
            },
          );
        },
      ),
    );
  }
}
