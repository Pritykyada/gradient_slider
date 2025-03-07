# Gradient Slider

A customizable gradient slider widget for Flutter. This widget allows you to create sliders with gradient backgrounds that can be customized with colors, range, and initial values. It’s a great way to enhance the look and feel of your Flutter applications.

## Screenshot

![Gradient Slider Screenshot](https://github.com/user-attachments/assets/d8808d13-a8f3-4faf-8501-5c722e6638d8)

## Features

- Customizable gradient colors for the slider background.
- Adjustable slider range (min and max values).
- Customizable initial slider value.
- Customizable label to display the slider value.
- Fully responsive and easy to integrate into your Flutter app.

## Installation

Add the following to your `pubspec.yaml` file:

```yaml
dependencies:
  color_gradient_slider: ^1.0.0
    git:
      url: https://github.com/yourgithub/color_gradient_slider.git
      
## Use it in your app:
 
        GradientSlider(
          colors: [
            Colors.red, 
            Colors.orange, 
            Colors.yellow,
            Colors.green, 
          ],
          initialValue: 50,
          minValue: 0,
          maxValue: 100,
          label: "Slider Value",
        )
        
        
## Example:
import 'package:flutter/material.dart';
import 'package:color_gradient_slider/color_gradient_slider.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Gradient Slider Example'),
        ),
        body: Center(
          child: GradientSlider(
            colors: [
              Colors.blue,
              Colors.purple,
              Colors.pink,
            ],
            initialValue: 30,
            minValue: 0,
            maxValue: 100,
            label: "Custom Slider",
          ),
        ),
      ),
    );
  }
}
