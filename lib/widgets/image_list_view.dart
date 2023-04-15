import 'dart:async';
import 'dart:ffi';
import 'dart:math';
import 'package:cached_network_image/cached_network_image.dart';

import 'package:e_shop/data/data.dart';
import 'package:flutter/material.dart';

class ImageList extends StatefulWidget {
  final int startIndex;
  const ImageList({super.key, required this.startIndex});

  @override
  State<ImageList> createState() => _ImageListState();
}

class _ImageListState extends State<ImageList> {
  final _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      if (_scrollController.position.atEdge) {
        _autoScroll();
      }

      WidgetsBinding.instance.addPostFrameCallback((_) {
        _autoScroll();
      });
    });
  }

  void _autoScroll() {
    final currentScrollPosition = _scrollController.offset;
    final scrollEndPosition = _scrollController.position.maxScrollExtent;
    scheduleMicrotask(
      () {
        _scrollController.animateTo(
            currentScrollPosition == scrollEndPosition ? 0 : scrollEndPosition,
            duration: const Duration(seconds: 10),
            curve: Curves.linear);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: 1.96 * pi,
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.60,
        height: MediaQuery.of(context).size.height * 0.60,
        child: ListView.builder(
          controller: _scrollController,
          itemCount: 3,
          itemBuilder: (context, index) {
            return CachedNetworkImage(
              imageUrl: products[widget.startIndex + index].productImage,
              imageBuilder: (context, imageProvider) {
                return Container(
                  margin: const EdgeInsets.only(
                    right: 8.0,
                    left: 8.0,
                    top: 10.0,
                  ),
                  height: MediaQuery.of(context).size.height * 0.40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: imageProvider,
                        fit: BoxFit.cover,
                      )),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
