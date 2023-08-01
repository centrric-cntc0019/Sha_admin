import 'package:lottie/lottie.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sha_admin/01_presentation/widgets/wa_text.dart';

import '../../05_core/utils/constant.dart';

class WACarousel extends StatefulWidget {
  const WACarousel(
      {Key? key,
      this.property,
      this.height,
      this.onTap,
      this.infiniteScroll,
      this.autoPlay,
      this.mainText,
      this.imageList,
      this.subText})
      : super(key: key);

  final dynamic property;
  final double? height;
  final Function()? onTap;
  final bool? autoPlay;
  final bool? infiniteScroll;
  final List<String>? imageList;
  final List<String>? mainText;
  final List<String>? subText;

  @override
  State<WACarousel> createState() => _WACarouselState();
}

class _WACarouselState extends State<WACarousel> {
  int? itemIndexx = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.height ?? 400.h,
      child: Stack(
        children: [
          CarouselSlider.builder(
            options: CarouselOptions(
              height: widget.height ?? 400.0.h,
              initialPage: 0,
              enableInfiniteScroll: true,
              viewportFraction: 1,
              onPageChanged: (index, reason) {
                itemIndexx = index;
                setState(() {});
                // MainController.instance.update(["carousel_slid"]);
              },
              // autoPlay: (property.property_images?.length ?? 0) > 1 ? true : false,
              autoPlay: false,
            ),
            itemCount: widget.imageList?.length,
            itemBuilder:
                (BuildContext context, int itemIndex, int pageViewIndex) {
              return Column(
                children: [
                  SizedBox(
                    height:
                        widget.height != null ? (widget.height! - 10.h) : 350.h,
                    child: Lottie.asset(
                      widget.imageList![itemIndex],
                      fit: BoxFit.contain,
                    ),
                  ),
                  if (widget.mainText != null) ...[
                    WAText(
                      text: widget.mainText![itemIndex],
                      fontColor: Colors.green,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                    sized0hx05,
                  ],
                  if (widget.subText != null)
                    WAText(
                      text: widget.subText![itemIndex],
                    ),
                ],
              );
            },
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: SizedBox(
                height: 8.0,
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: widget.imageList!.map((e) {
                    var indexx = widget.imageList?.indexOf(e);

                    bool sameElement = itemIndexx == indexx;

                    // bool sameElement =
                    //     e.uuid == property.property_images?[itemIndexx!].uuid;
                    // bool sameElement = e.uuid == property_images[itemIndex];
                    return Container(
                      height: 8.0,
                      alignment: Alignment.center,
                      width: sameElement ? 18 : 8.0,
                      // width: 18,
                      margin: const EdgeInsets.symmetric(horizontal: 2.0),
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        // color: cWhite,
                        shape:
                            sameElement ? BoxShape.rectangle : BoxShape.circle,
                        // BoxShape.rectangle,
                        borderRadius:
                            sameElement ? BorderRadius.circular(5) : null,
                        // BorderRadius.circular(5)
                      ),
                    );
                  }).toList(),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
