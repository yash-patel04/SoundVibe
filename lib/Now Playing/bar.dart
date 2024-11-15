import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class SoundBar extends StatefulWidget {
  // final String image;
  const SoundBar({
    super.key,
    // required this.image
  });

  @override
  State<SoundBar> createState() => _SoundBarState();
}

class _SoundBarState extends State<SoundBar> {
  var value = 10.0;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SfRadialGauge(
      animationDuration: 1,
      enableLoadingAnimation: true,
      axes: [
        RadialAxis(
          axisLineStyle: const AxisLineStyle(
            thickness: 5,
          ),
          useRangeColorForAxis: true,
          startAngle: 0,
          endAngle: 180,
          canRotateLabels: false,
          interval: 1,
          isInversed: true,
          maximum: 100,
          minimum: 0,
          showAxisLine: true,
          showLabels: false,
          showTicks: false,
          ranges: [
            GaugeRange(
              // rangeOffset: 1,
              startValue: 0,
              endValue: value,
              color: Colors.deepPurple,
              startWidth: 5,
              endWidth: 5,
            )
          ],
          pointers: [
            MarkerPointer(
              color: Colors.deepPurple,
              borderWidth: 5,
              value: value,
              onValueChanged: (valuee) {
                setState(() {
                  value = valuee;
                });
              },
              enableAnimation: true,
              enableDragging: true,
              markerType: MarkerType.circle,
              markerHeight: 15,
              markerWidth: 15,
            )
          ],
          annotations: [
            GaugeAnnotation(
              horizontalAlignment: GaugeAlignment.center,
              angle: 0,
              positionFactor: 0.02,
              widget: Container(
                width: width * 0.69,
                height: height * 0.3,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(1000),
                  image: const DecorationImage(
                    image: AssetImage("assets/nowplaying.jpeg"),
                    // NetworkImage(widget.image),
                    fit: BoxFit.cover,
                  ),
                  color: Colors.white,
                ),
              ),
            )
          ],
        )
      ],
    );
  }
}
