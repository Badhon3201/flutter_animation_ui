import 'package:flutter/material.dart';

class RightToLeft extends StatefulWidget {
  const RightToLeft({Key? key, required this.duration, required this.child})
      : super(key: key);

  final Widget child;
  final Duration duration;

  @override
  State<RightToLeft> createState() => _RightToLeftState();
}

class _RightToLeftState extends State<RightToLeft>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _offsetAnimation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = AnimationController(vsync: this, duration: widget.duration);

    _offsetAnimation = Tween<Offset>(
      begin: const Offset(1.0, 0.0),
      end: Offset.zero,
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeOut,
    ));

    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _offsetAnimation,
      child: Scaffold(
        appBar: AppBar(
          title: Text("H"),
        ),
      ),
    );
  }
}
