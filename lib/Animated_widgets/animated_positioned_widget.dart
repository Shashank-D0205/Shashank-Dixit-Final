import 'package:flutter/material.dart';

// class AnimatedPositionedWidget extends AnimatedWidget {
//   const AnimatedPositionedWidget({
//     Key? key,
//     required Animation<double> controller,
//     required this.child,
//   }) : super(key: key, listenable: controller);
//
//   final Widget child;
//
//   @override
//   Widget build(BuildContext context) {
//     final animation = listenable as Animation<double>;
//     return Positioned(
//       top: 100, // Example fixed top position
//       left: animation.value * 100, // Example animation for left position
//       child: child,
//     );
//   }
// }
class AnimatedPositionedWidget extends StatefulWidget {
  const AnimatedPositionedWidget({
    Key? key,
    required this.controller,
    required this.width,
    required this.height,
    required this.child,
    this.relativeRect,
    this.slideAnimationcurve = Curves.fastOutSlowIn,
  }) : super(key: key);

  final CurvedAnimation controller;
  final double width;
  final double height;
  final Widget child;
  final Animation<RelativeRect>? relativeRect;
  final Curve slideAnimationcurve;

  @override
  _AnimatedPositionedWidgetState createState() =>
      _AnimatedPositionedWidgetState();
}

class _AnimatedPositionedWidgetState extends State<AnimatedPositionedWidget> {
  late Animation<RelativeRect> textPositionAnimation;

  @override
  void initState() {
    textPositionAnimation = widget.relativeRect ??
        RelativeRectTween(
          begin: RelativeRect.fromSize(
            Rect.fromLTWH(0, widget.height, widget.width, widget.height),
            Size(widget.width, widget.height),
          ),
          end: RelativeRect.fromSize(
            Rect.fromLTWH(0, 0, widget.width, widget.height),
            Size(widget.width, widget.height),
          ),
        ).animate(widget.controller);

    super.initState();
  }



  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.height,
      width: widget.width,
      child: Stack(
        children: [
          PositionedTransition(
            rect: textPositionAnimation,
            child: widget.child,
          ),
        ],
      ),
    );
  }
}
