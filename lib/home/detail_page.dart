import 'package:animation/home/widgets/detailed_info_widget.dart';
import 'package:animation/home/widgets/hero_widget.dart';
import 'package:animation/home/widgets/lat_long_widget.dart';
import 'package:animation/home/widgets/reviews_widget.dart';
import 'package:flutter/material.dart';

import 'data/hero_tag.dart';
import 'models/location.dart';

class DetailPage extends StatelessWidget {
  final Location location;
  final Animation<double> animation;

  const DetailPage({
    required this.location,
    required this.animation,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
    extendBodyBehindAppBar: true,
    backgroundColor: Colors.white,
    appBar: AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      title: const Text('INTERESTS'),
      centerTitle: true,
      actions: [
        IconButton(
          icon: const Icon(Icons.close),
          onPressed: Navigator.of(context).pop,
        ),
        const SizedBox(width: 10)
      ],
      leading: const Icon(Icons.search_outlined),
    ),
    body: Column(
      children: [
        Expanded(
          flex: 1,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              SizedBox.expand(
                child: HeroWidget(
                  tag: HeroTag.image(location.urlImage!),
                  child: Image.asset(location.urlImage!, fit: BoxFit.cover),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8),
                child: LatLongWidget(location: location),
              ),
            ],
          ),
        ),
        DetailedInfoWidget(location: location),
        Expanded(
          flex: 5,
          child: ReviewsWidget(location: location, animation: animation),
        ),
      ],
    ),
  );
}