import 'package:flutter/material.dart';

import '../../../utils/color_utils.dart';
import '../../../utils/context_utils.dart';

Widget homeLoadingWidget({
  required AnimationController animationController,
  required Animation<Alignment> topAlignmentAnimation,
  required Animation<Alignment> bottomAlignmentAnimation,
}) =>
    AnimatedBuilder(
      animation: animationController,
      builder: (context, child) => SingleChildScrollView(
        child: SizedBox(
          width: ssW(context),
          height: ssH(context),
          child: Padding(
            padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
            child: Stack(
              children: [
                imageLoadingWidget(
                  context: context,
                  topAlignmentAnimation: topAlignmentAnimation,
                  bottomAlignmentAnimation: bottomAlignmentAnimation,
                ),
                Positioned(
                  top: 360,
                  child: Container(
                    width: ssW(context) - 20,
                    decoration: BoxDecoration(
                      color: ColorUtils.grayColor01,
                      borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          45.sbH,
                          Container(
                            width: 250,
                            height: 60,
                            decoration: animationBoxDecoration(
                              topAlignmentAnimation: topAlignmentAnimation,
                              bottomAlignmentAnimation: bottomAlignmentAnimation,
                            ),
                          ),
                          15.sbH,
                          Container(
                            width: ssW(context),
                            height: 25,
                            decoration: animationBoxDecoration(
                              topAlignmentAnimation: topAlignmentAnimation,
                              bottomAlignmentAnimation: bottomAlignmentAnimation,
                            ),
                          ),
                          15.sbH,
                          Container(
                            width: ssW(context),
                            height: 40,
                            decoration: animationBoxDecoration(
                              topAlignmentAnimation: topAlignmentAnimation,
                              bottomAlignmentAnimation: bottomAlignmentAnimation,
                            ),
                          ),
                          20.sbH,
                          Divider(color: Colors.black),
                          20.sbH,
                          Column(
                            children: List.generate(10, (index) {
                              return Container(
                                width: ssW(context),
                                height: 20,
                                margin: EdgeInsets.only(bottom: 5),
                                decoration: animationBoxDecoration(
                                  topAlignmentAnimation: topAlignmentAnimation,
                                  bottomAlignmentAnimation: bottomAlignmentAnimation,
                                ),
                              );
                            }),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 360 - 25,
                  left: 20,
                  child: Container(
                    width: 160,
                    height: 50,
                    decoration: animationBoxDecoration(
                      topAlignmentAnimation: topAlignmentAnimation,
                      bottomAlignmentAnimation: bottomAlignmentAnimation,
                    ).copyWith(borderRadius: BorderRadius.circular(50)),
                  ),
                ),
                Positioned(
                  top: 360 - 25,
                  right: 20,
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: animationBoxDecoration(
                      topAlignmentAnimation: topAlignmentAnimation,
                      bottomAlignmentAnimation: bottomAlignmentAnimation,
                    ).copyWith(borderRadius: BorderRadius.circular(50)),
                  ),
                ),
                Positioned(
                  top: 360 - 25,
                  right: 20 + 50 + 10,
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: animationBoxDecoration(
                      topAlignmentAnimation: topAlignmentAnimation,
                      bottomAlignmentAnimation: bottomAlignmentAnimation,
                    ).copyWith(borderRadius: BorderRadius.circular(50)),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );

BoxDecoration animationBoxDecoration({
  required Animation<Alignment> topAlignmentAnimation,
  required Animation<Alignment> bottomAlignmentAnimation,
}) => BoxDecoration(
        gradient: LinearGradient(
          colors: [ColorUtils.grayColor02, ColorUtils.grayColor03],
          begin: topAlignmentAnimation.value,
          end: bottomAlignmentAnimation.value,
        ),
      );

Widget imageLoadingWidget({
  required BuildContext context,
  required Animation<Alignment> topAlignmentAnimation,
  required Animation<Alignment> bottomAlignmentAnimation,
}) =>
    Container(
      width: ssW(context),
      height: 370,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [ColorUtils.secondColor01, ColorUtils.secondColor02],
          begin: topAlignmentAnimation.value,
          end: bottomAlignmentAnimation.value,
        ),
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      alignment: Alignment.center,
      child: Icon(Icons.image_outlined, color: ColorUtils.grayColor01, size: 30),
    );