import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'Model.dart';
import 'Notes.dart';

class WriteANote extends StatelessWidget {
  final TextEditingController textController = TextEditingController();

  WriteANote({super.key});

  @override
  Widget build(BuildContext context) {
    Mymodel myModel = Provider.of<Mymodel>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text("write a note"),
      ),
      body: Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: textController,
              decoration: const InputDecoration(labelText: 'Enter Note'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                String noteText = textController.text;
                if (noteText.isNotEmpty) {
                  Notes newNote = Notes(note: noteText);
                  myModel.add(newNote);
                  textController.clear();
                }
              },
              child: const Text('Add Note'),
            ),
          ],
        ),
      ),
    );
  }
}
