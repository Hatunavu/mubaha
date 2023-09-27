import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mubaha/ui/theme/constant.dart';
import 'package:shimmer/shimmer.dart';

class ProductDetailShimmerWidget extends StatelessWidget {
  const ProductDetailShimmerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
            padding: EdgeInsets.zero,
            height: MediaQuery.of(context).size.height,
            child: Column(mainAxisSize: MainAxisSize.max, children: <Widget>[
              Expanded(
                  child: Shimmer.fromColors(
                      baseColor: Colors.grey.withOpacity(0.4),
                      highlightColor: Colors.grey.withOpacity(0.2),
                      child: Container(
                          padding: EdgeInsets.only(
                              left: kDefaultPaddingScreen.w,
                              right: kDefaultPaddingScreen.w,
                              bottom: kDefaultPaddingScreen.h,
                              top: kDefaultPaddingScreen.h),
                          width: MediaQuery.of(context).size.width,
                          child: SingleChildScrollView(
                            child: Column(children: [
                              Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          height: 15.h,
                                          width: 200.h,
                                          color: Colors.white,
                                        ),
                                      ],
                                    ),
                                  ]),
                              SizedBox(
                                height: kDefaultPaddingHeightScreen,
                              ),
                              Container(
                                height: MediaQuery.of(context).size.width,
                                width: MediaQuery.of(context).size.width,
                                color: Colors.white,
                              ),
                              SizedBox(
                                height: kDefaultPaddingHeightScreen,
                              ),
                              Container(
                                height: 50.h,
                                width: MediaQuery.of(context).size.width,
                                color: Colors.white,
                              ),
                              SizedBox(
                                height: kDefaultPaddingHeightScreen,
                              ),
                              Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          height: 15.h,
                                          width: 200.h,
                                          color: Colors.white,
                                        ),
                                        SizedBox(height: 5.h),
                                        Container(
                                          height: 15.h,
                                          width: 120.h,
                                          color: Colors.white,
                                        ),
                                      ],
                                    ),
                                  ]),
                              SizedBox(
                                height: kDefaultPaddingHeightScreen,
                              ),
                              Container(
                                height: 80.h,
                                width: MediaQuery.of(context).size.width,
                                color: Colors.white,
                              ),
                              SizedBox(
                                height: kDefaultPaddingHeightScreen,
                              ),
                              Container(
                                height: 80.h,
                                width: MediaQuery.of(context).size.width,
                                color: Colors.white,
                              ),
                            ]),
                          ))))
            ])));
  }
}
