import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mubaha/data/model/cart/cart_model.dart';
import 'package:mubaha/ui/screen/main/review/widget/review_item.dart';
import 'package:mubaha/ui/shared/widget/button/primary_button.dart';
import 'package:mubaha/ui/shared/widget/divider/divider_widget.dart';
import 'package:mubaha/ui/shared/widget/header/header.dart';
import 'package:mubaha/ui/theme/constant.dart';

class ReviewScreen extends StatelessWidget {
  final List<CartDocs> cartDocs;
  const ReviewScreen({Key? key, required this.cartDocs}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        minimum: EdgeInsets.only(bottom: 8.h),
        child: Column(
          children: [
            const Header(
              isBack: true,
              title: 'Đánh giá sản phẩm',
            ),
            Expanded(
                child: SingleChildScrollView(
              child: Column(
                children: [
                  const DividerWidget(),
                  Padding(
                    padding: EdgeInsets.all(kDefaultPaddingWidthWidget),
                    child: Column(
                      children: [
                        Container(
                          height: 170.h,
                          decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(5.sp)),
                        ),
                        SizedBox(
                          height: kDefaultPaddingWidthWidget,
                        ),
                        ListView.builder(
                            physics: const NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: cartDocs.length,
                            itemBuilder: ((context, index) {
                              return ReviewItem(
                                cartDocs: cartDocs[index],
                              );
                            }))
                      ],
                    ),
                  ),
                ],
              ),
            )),
            Container(
              height: 57.h,
              decoration: BoxDecoration(
                  border: Border(top: BorderSide(color: baseBottom))),
              padding: EdgeInsets.symmetric(
                horizontal: kDefaultPaddingWidthWidget,
              ),
              child: Center(child: PrimaryButton(label: 'Xác nhận')),
            )
          ],
        ),
      ),
    );
  }
}
