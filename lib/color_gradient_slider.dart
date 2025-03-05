import 'package:flutter/material.dart';

class GradientSlider extends StatefulWidget {
  final List<Color> colors;
  final double initialValue;
  final double minValue;
  final double maxValue;
  final String label;

  GradientSlider({
    required this.colors,
    this.initialValue = 50,
    this.minValue = 0,
    this.maxValue = 100,
    this.label = "",
  });

  @override
  _GradientSliderState createState() => _GradientSliderState();
}

class _GradientSliderState extends State<GradientSlider> {
  late double _value;



  @override
  void initState() {
    super.initState();
    _value = widget.initialValue;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            '${_value.round()}',
          ),
          SizedBox(height: 10),
          Container(
            width: 330,
            height: 20,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: widget.colors,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            child: SliderTheme(
              data: SliderTheme.of(context).copyWith(
                trackShape: RoundedRectSliderTrackShape(),
                trackHeight: 20.0,
                thumbShape: RoundSliderThumbShape(
                  enabledThumbRadius: 12.0,
                  elevation: 4.0,
                ),
                overlayShape: RoundSliderOverlayShape(overlayRadius: 20.0),
                activeTrackColor: Colors.transparent,
                inactiveTrackColor: Colors.transparent,
                thumbColor: Colors.blue,
                overlayColor: Colors.grey
              ),
              child: Slider(
                value: _value,
                min: widget.minValue,
                max: widget.maxValue,
                onChanged: (value) {
                  setState(() {
                    _value = value;
                  });
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
