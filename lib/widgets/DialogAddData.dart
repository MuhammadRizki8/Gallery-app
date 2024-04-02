import 'package:flutter/material.dart';

class DialogAddData extends StatelessWidget {
  DialogAddData({Key? key}) : super(key: key);

  String _title = '';
  String _description = '';
  String _image = '';

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Add Data'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          TextField(
            decoration: const InputDecoration(labelText: 'Title'),
            onChanged: (value) {
              _title = value;
            },
          ),
          TextField(
            decoration: const InputDecoration(labelText: 'Description'),
            onChanged: (value) {
              _description = value;
            },
          ),
          TextField(
            decoration: const InputDecoration(labelText: 'Image'),
            onChanged: (value) {
              _image = value;
            },
          ),
        ],
      ),
      actions: <Widget>[
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text('Cancel'),
        ),
        TextButton(
          onPressed: () {
            Navigator.of(context).pop({
              'title': _title,
              'description': _description,
              'image': _image,
            });
          },
          child: const Text('Add'),
        ),
      ],
    );
  }
}
