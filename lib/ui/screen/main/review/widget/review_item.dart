import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mubaha/data/model/cart/cart_model.dart';
import 'package:mubaha/ui/screen/main/review/widget/media_button_widget.dart';
import 'package:mubaha/ui/shared/widget/divider/divider_widget.dart';
import 'package:mubaha/ui/theme/constant.dart';
import 'package:mubaha/ui/theme/theme.dart';

class ReviewItem extends StatelessWidget {
  final CartDocs cartDocs;
  const ReviewItem({Key? key, required this.cartDocs}) : super(key: key);
  _getFromGallery() async {
    PickedFile? pickedFile = await ImagePicker().getImage(
      source: ImageSource.gallery,
      maxWidth: 1800,
      maxHeight: 1800,
    );
    if (pickedFile != null) {
      File imageFile = File(pickedFile.path);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const DividerWidget(
          isSmall: true,
        ),
        Row(
          children: [
            CachedNetworkImage(
              imageUrl: cartDocs.product!.media.featuredImage,
              imageBuilder: (context, imageBuilder) => Container(
                margin:
                    EdgeInsets.symmetric(vertical: kDefaultPaddingHeightScreen),
                height: 21.h,
                width: 21.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(1.sp),
                    image: DecorationImage(image: imageBuilder)),
              ),
            ),
            SizedBox(
              width: kDefaultPaddingWidthScreen,
            ),
            Expanded(
              child: Text(
                cartDocs.product!.name,
                overflow: TextOverflow.ellipsis,
              ),
            )
          ],
        ),
        RatingBar.builder(
          initialRating: 5,
          minRating: 1,
          direction: Axis.horizontal,
          itemCount: 5,
          itemPadding: EdgeInsets.symmetric(horizontal: 4.w),
          itemBuilder: (context, _) => const Icon(
            Icons.star,
            color: primaryColor,
          ),
          onRatingUpdate: (rating) {
            print(rating);
          },
        ),
        SizedBox(
          height: kDefaultPaddingHeightWidget,
        ),
        Row(
          children: [
            MediaButtonWidget(
                icon: Icons.camera_alt_rounded,
                title: 'Thêm hình ảnh',
                onTap: () {
                  _getFromGallery();
                }),
            SizedBox(
              width: kDefaultPaddingWidthScreen,
            ),
            MediaButtonWidget(
                icon: Icons.video_camera_front,
                title: 'Thêm video',
                onTap: () {})
          ],
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: kDefaultPaddingHeightWidget),
          child: TextField(
            style: subTitleStyle.copyWith(height: 1.3, color: titleColor),
            maxLines: 7,
            decoration: InputDecoration(
                hintText:
                    'Hãy chia sẻ những điều bạn thích về sản phẩm này nhé.',
                hintStyle: subTitleStyle.copyWith(height: 1.3),
                fillColor: secondaryColor,
                filled: true,
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.transparent),
                  borderRadius: BorderRadius.circular(5.sp),
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: const BorderSide(color: Colors.transparent),
                  borderRadius: BorderRadius.circular(5.sp),
                )),
          ),
        ),
      ],
    );
  }
}
