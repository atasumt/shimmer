import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

Shimmer globalShimmer({
  Color? baseColor,
  Color? highlightColor,
  double? height,
}) {
  return Shimmer.fromColors(
    child: ListView.builder(
        itemCount: 5,
        itemBuilder: ((context, index) {
          return Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18),
            ),
            child: SizedBox(height: height ?? 80),
          );
        })),
    baseColor: baseColor ?? Colors.grey[300]!,
    highlightColor: highlightColor ?? Colors.grey[100]!,
  );
}
