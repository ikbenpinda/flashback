// A widget that displays the picture taken by the user.
import 'dart:io';

import 'package:flutter/material.dart';

class PictureDisplayWidget extends StatelessWidget {
  final String imagePath;

  const PictureDisplayWidget({Key key, this.imagePath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // The image is stored as a file on the device. Use the `Image.file`
      // constructor with the given path to display the image.
      body: Center(
        child: Column(
          children: <Widget>[
            Image.file(File(imagePath)),
            Row(
              children: <Widget>[
                RaisedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('Go back!'),
                ),
                RaisedButton(
                  onPressed: () {
                    // todo - save to storage

                    Navigator.pop(context);
                  },
                  child: Text('Save'),
                )
              ]
            )
          ]
        ),
      ),
    );
  }
}
