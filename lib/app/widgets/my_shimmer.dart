import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shimmer/shimmer.dart';

class MyShimmer {
  static Widget baseShimmer = Shimmer(
    gradient: LinearGradient(
        begin: const Alignment(-1, 0.3),
        end: const Alignment(1, -0.3),
        stops: const [0.25, 0.5, 0.35],
        colors: [Colors.grey.shade200, Colors.white, Colors.grey.shade200]),
    child: Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
    ),
  );

  static shimmerListCard({EdgeInsetsGeometry? padding, double? heightListShimmer}) {
    return Container(
      padding: padding ?? const EdgeInsets.all(8.0),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadiusDirectional.circular(12),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            constraints: const BoxConstraints(minWidth: 50, minHeight: 50, maxHeight: 60, maxWidth: 60),
            decoration: const BoxDecoration(),
            child: MyShimmer.baseShimmer,
          ),
          const SizedBox(width: 4),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.all(4),
                  height: heightListShimmer ?? 20,
                  decoration: const BoxDecoration(),
                  child: MyShimmer.baseShimmer,
                ),
                Container(
                  padding: const EdgeInsets.all(4),
                  height: heightListShimmer ?? 20,
                  width: Get.width * .4,
                  decoration: const BoxDecoration(),
                  child: MyShimmer.baseShimmer,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(4),
                      height: heightListShimmer ?? 20,
                      width: Get.width * .2,
                      decoration: const BoxDecoration(),
                      child: MyShimmer.baseShimmer,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
