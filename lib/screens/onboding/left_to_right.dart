import 'package:flutter/material.dart';

class LeftToRight extends StatefulWidget {
  const LeftToRight({Key? key, this.duration, this.child}) : super(key: key);

  final Widget? child;
  final Duration? duration;

  @override
  State<LeftToRight> createState() => _LeftToRightState();
}

class _LeftToRightState extends State<LeftToRight> {
  late AnimationController _controller;
  late Animation<Offset> _offsetAnimation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // _controller = AnimationController(vsync: this, duration: widget.duration);

    // _offsetAnimation = Tween<Offset>(
    //   begin: const Offset(-1.0, 0.0),
    //   end: Offset.zero,
    // ).animate(CurvedAnimation(
    //   parent: _controller,
    //   curve: Curves.easeOut,
    // ));

    // _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("H")),
    );
  }
}
