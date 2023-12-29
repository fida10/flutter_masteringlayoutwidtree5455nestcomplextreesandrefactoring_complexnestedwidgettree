/*
Practice Question 1: Complex Nested Widget Tree

Task Description:
Create a Flutter application that features a complex nested widget tree. The app should have a main screen with a deep nesting of widgets, including Rows, Columns, Containers, and Text. This screen should display a variety of information in a well-organized layout (e.g., a user profile screen with image, text details, and action buttons).
 */

import 'package:flutter/material.dart';

// This is the main function where the execution of the Flutter app starts.
void main() {
  // runApp is a built-in Flutter function that inflates the given widget and attaches it to the screen.
  runApp(const MyApp());
}

// MyApp is a StatelessWidget, which describes part of the user interface which can't change over time.
class MyApp extends StatelessWidget {
  // This is a constructor for MyApp. 'const' means that all instances of MyApp will be identical.
  // 'super.key' is used to pass the key to the parent class constructor.
  const MyApp({Key? key}) : super(key: key);

  // This is the build method that describes the widgets which form the user interface of the MyApp.
  @override
  Widget build(BuildContext context) {
    // MaterialApp is a pre-made app style that follows Material Design guidelines.
    // 'const' means that all instances of MaterialApp will be identical.
    return const MaterialApp(
      // The home property takes a widget which is to be the default route of the app (the first screen we see).
      home: HomePage(),
    );
  }
}

// HomePage is a StatefulWidget, which can change over time (it's mutable).
class HomePage extends StatefulWidget {
  // This is a constructor for HomePage. 'const' means that all instances of HomePage will be identical.
  // 'super.key' is used to pass the key to the parent class constructor.
  const HomePage({Key? key}) : super(key: key);

  // createState is a method that creates the mutable state for this widget.
  @override
  State<HomePage> createState() => _HomePageState();
}

// Overall, MyApp is the root of your application. It's a StatelessWidget, which means it describes an unchanging part of your app.
// HomePage is a StatefulWidget, which means it can change over time. The actual state is held in _HomePageState, which is not shown in this code.

// This is a state class for the HomePage widget. It extends the generic State class with HomePage as the type.
class _HomePageState extends State<HomePage> {
  // This is a variable that holds the current number displayed on the button.
  int currentNumOnButton = 1;

  // This is the build method that describes the widgets which form the user interface of the _HomePageState.
  @override
  Widget build(BuildContext context) {
    // Scaffold is a widget that implements the basic material design visual layout structure.
    return Scaffold(
      // SafeArea is a widget that insets its child by sufficient padding to avoid intrusions by the operating system.
      body: SafeArea(
          // Column is a widget that displays its children in a vertical array.
          child: Column(
        // MainAxisAlignment.start positions the children at the start of the column.
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          // Text is a widget that displays a short, simple piece of text.
          const Text(
            // This is the actual text that will be displayed.
            'This text is the title of the main column',
            // TextStyle describes the style of the text.
            style: TextStyle(
              // The color of the text.
              color: Colors.pink,
              // The size of the text.
              fontSize: 24,
              // The weight of the font.
              fontWeight: FontWeight.bold,
            ),
          ),
          // Container is a convenience widget that combines common painting, positioning, and sizing widgets.
          Container(
            // The color of the container.
            color: Colors.grey,
            // The width of the container.
            width: 100,
            // The height of the container.
            height: 100,
            // The child of the container.
            child: const Text('This is some text within the container'),
          ),
          // Row is a widget that displays its children in a horizontal array.
          Row(
            // MainAxisAlignment.center positions the children at the center of the row.
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Padding is a widget that insets its child by the given padding.
              const Padding(
                // EdgeInsets.all creates insets from offsets from all sides.
                padding: EdgeInsets.all(8.0),
                // The child of the padding.
                child: Text(
                  // This is the actual text that will be displayed.
                  'This is text from the first row',
                  // TextStyle describes the style of the text.
                  style: TextStyle(
                      // The size of the text.
                      fontSize: 16,
                      // The weight of the font.
                      fontWeight: FontWeight.bold,
                      // The color of the text.
                      color: Colors.blue),
                ),
              ),
              // Expanded takes up the remaining space in the row.
              Expanded(
                // The child of the expanded.
                child: Padding(
                  // EdgeInsets.all creates insets from offsets from all sides.
                  padding: const EdgeInsets.all(8.0),
                  // ElevatedButton is a Material Design raised button.
                  child: ElevatedButton(
                    // The callback that is called when the button is tapped or otherwise activated.
                    onPressed: () {
                      // setState tells the Flutter framework that the internal state of this object has changed.
                      setState(() {
                        // Increase the current number on the button.
                        currentNumOnButton++;
                      });
                    },
                    // The child of the button.
                    child: Text(
                        // The actual text that will be displayed on the button.
                        '${currentNumOnButton.toString()}, press to increase'),
                  ),
                ),
              ),
            ],
          ),
        ],
      )),
    );
  }
}

// Overall, _HomePageState is the state for HomePage. It describes the part of the user interface which can change over time.
// It contains a column with a text widget, a container, and a row with a text widget and a button. The button increases the number displayed on it when pressed.