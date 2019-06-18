import 'package:flutter/material.dart';
import 'package:camera/camera.dart';

import 'widgets/camera/camerapreview.dart';
import 'widgets/themes.dart';

void main() async {

  List<CameraDescription> cameras;
  CameraDescription firstCamera;

  // Obtain a list of the available cameras on the device.
  cameras = await availableCameras();

  // Get a specific camera from the list of available cameras.
  firstCamera = cameras.first;

  runApp(
    // FIXME Instead of returning a MaterialApp here,
    // use MyApp for Hot Reload to pick up on changes.

    MaterialApp(
        title: 'Flashback',
        debugShowCheckedModeBanner: false,
        theme: Themes().appTheme,
        home: CameraPreviewWidget( // fixme - redirect to FlashbackApp(working title)
          title: 'Flashback',
          camera: firstCamera,
        )
    ),
  );
}

// fixme - lifecycle architecture issue / see hot reloading
// todo - display list of taken pictures
// todo - handle this as a first screen in the app
// todo - use FutureBuilder for the async part of the sync build call!
class FlashbackApp extends StatefulWidget {

   // ---
   // This widget is the root of your application.
   // ---

  final List<Image> _images = <Image>[];
  int index = 0;

  Widget _buildList() {
    return ListView.builder(
      padding: const EdgeInsets.all(10.0),
      itemBuilder: (context, i) {

        if(_images.length == 0)
          return Text('Your album is currently empty.', style: Theme.of(context).textTheme.display1,);

        if (i.isOdd)
          return Divider();

        // todo - add description or data as a param
        return _buildListItem(_images[index]);
      },
    );
  }

  // todo - add desc or data as a param
  Widget _buildListItem(Image image) {
    return ListTile(
      title: Text(image.toStringShort(), style: TextTheme().display1,),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flashback',
      // todo - this is the before-taking-picture widget layout
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Your album is currently empty.',
            style: Theme.of(context).textTheme.display1,
            )
          ],
        ),
      ),
      debugShowCheckedModeBanner: false,
      theme: Themes().appTheme,
      home: CameraPreviewWidget(
          title: 'Flashback',
          camera: firstCamera,
      ),
    );
  }

  @override
  State createState() => _FlashbackAppState();
}

class _FlashbackAppState extends State<FlashbackApp> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return null;
  }

}