import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mubaha/data/model/product/product.dart';
import 'package:mubaha/data/repository/customer/customer_repository.dart';
import 'package:mubaha/icons/my_flutter_app_icons.dart';
import 'package:mubaha/injection.dart';
import 'package:mubaha/ui/app_cubit.dart';
import 'package:mubaha/ui/app_state.dart';
import 'package:mubaha/ui/screen/main/cart/cart_screen.dart';
import 'package:mubaha/ui/screen/main/cart/cubit/cart_cubit/cart_cubit.dart';
import 'package:mubaha/ui/screen/main/cart/cubit/select_cart_cubit/select_cart_cubit.dart';
import 'package:mubaha/ui/screen/main/favorite/cubit/favorite_cubit.dart';
import 'package:mubaha/ui/screen/main/favorite/cubit/favorite_state.dart';
import 'package:mubaha/ui/screen/main/favorite/widget/secondary_item.dart';
import 'package:mubaha/ui/screen/main/payment/cubit/payment_cubit.dart';
import 'package:mubaha/ui/shared/base_screen.dart';
import 'package:mubaha/ui/shared/loading_screen.dart';
import 'package:mubaha/ui/shared/widget/header/header.dart';
import 'package:mubaha/ui/theme/app_path.dart';
import 'package:mubaha/ui/theme/constant.dart';
import 'package:mubaha/ui/theme/theme.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseScreen(
      child: BlocProvider(
        create: (context) => FavoriteCubit(getIt.get<CustomerRepository>())
          ..getDataFavoriteScreen(),
        child: BlocConsumer<FavoriteCubit, FavoriteState>(
            builder: (context, state) {
              if (state.isLoading) {
                return const LoadingScreen();
              }
              if (state.listFavorite.isEmpty) {
                return Container(
                  alignment: Alignment.center,
                  margin:
                      EdgeInsets.symmetric(horizontal: kDefaultPaddingWidget.w),
                  child: Text(
                    "Bạn chưa có sản phẩm nào trong danh sách yêu thích.",
                    style: titleStyle,
                  ),
                );
              }
              return BlocBuilder<AppCubit, AppState>(
                builder: (context, appState) {
                  return Container(
                    padding: EdgeInsets.zero,
                    child: Column(
                      children: [
                        renderHeader(context, appState),
                        renderBody(context, state.listFavorite)
                      ],
                    ),
                  );
                },
              );
            },
            listener: (context, state) {}),
      ),
    );
  }
}

Widget renderHeader(BuildContext context, AppState appState) {
  return Header(
    title: "Yêu thích",
    trailing: Row(children: [
      InkWell(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => MultiBlocProvider(
                        providers: [
                          BlocProvider(
                            create: (context) =>
                                CartCubit(getIt.get<CustomerRepository>()),
                          ),
                          BlocProvider(
                            create: (context) => SelectCartCubit(),
                          ),
                          BlocProvider(
                              create: (context) =>
                                  PaymentCubit(getIt.get<CustomerRepository>()))
                        ],
                        child: CartScreen(),
                      )));
        },
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: kDefaultPaddingScreen.w),
          child: appState.userSession != null
              ? Badge(
                  padding: EdgeInsets.symmetric(horizontal: 2.w, vertical: 1.h),
                  shape: BadgeShape.square,
                  borderRadius: BorderRadius.circular(10.r),
                  badgeContent: Text(appState.totalCart.toString(),
                      style: TextStyle(color: Colors.white, fontSize: 9.sp)),
                  child: const Icon(
                    MyFlutterApp.cart,
                    color: Colors.black,
                  ),
                )
              : const Icon(
                  MyFlutterApp.cart,
                  color: Colors.black,
                ),
        ),
      ),
      InkWell(
        child: Container(
          padding: EdgeInsets.zero,
          child: SvgPicture.asset(
            AppPath.searchIcon,
            color: Colors.black,
            width: 18.w,
          ),
        ),
      ),
    ]),
  );
}

Widget renderBody(BuildContext context, List<Product> listFavorite) {
  return Expanded(
      child: Container(
    // padding: EdgeInsets.only(top: kDefaultPaddingScreen.h),
    child: ListView.builder(
      shrinkWrap: true,
      itemCount: listFavorite.length,
      itemBuilder: (ctx, index) {
        final Product item = listFavorite[index];
        return SecondaryItem(
          item: item,
          index: index,
          listCount: listFavorite.length,
        );
      },
    ),
  ));
}
