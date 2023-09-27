import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mubaha/data/repository/customer/customer_repository.dart';
import 'package:mubaha/icons/my_flutter_app_icons.dart';
import 'package:mubaha/injection.dart';
import 'package:mubaha/ui/app_cubit.dart';
import 'package:mubaha/ui/app_state.dart';
import 'package:mubaha/ui/screen/main/cart/cart_screen.dart';
import 'package:mubaha/ui/screen/main/cart/cubit/cart_cubit/cart_cubit.dart';
import 'package:mubaha/ui/screen/main/cart/cubit/select_cart_cubit/select_cart_cubit.dart';
import 'package:mubaha/ui/screen/main/home/cubit/home_cubit.dart';
import 'package:mubaha/ui/screen/main/home/cubit/home_state.dart';
import 'package:mubaha/ui/screen/main/home/widget/banner/list_banner.dart';
import 'package:mubaha/ui/screen/main/home/widget/category/list_category.dart';
import 'package:mubaha/ui/screen/main/home/widget/deals/deals.dart';
import 'package:mubaha/ui/screen/main/home/widget/kids_corner/kids_corner.dart';
import 'package:mubaha/ui/screen/main/home/widget/shimmer/home_shimmer_widget.dart';
import 'package:mubaha/ui/screen/main/home/widget/style/your_style.dart';
import 'package:mubaha/ui/screen/main/payment/cubit/payment_cubit.dart';
import 'package:mubaha/ui/shared/base_screen.dart';
import 'package:mubaha/ui/shared/error_screen.dart';
import 'package:mubaha/ui/shared/widget/divider/divider_widget.dart';
import 'package:mubaha/ui/theme/app_path.dart';
import 'package:mubaha/ui/theme/constant.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key, this.isLogin = false}) : super(key: key);
  final bool? isLogin;
  @override
  Widget build(BuildContext context) {
    return BaseScreen(
      child: BlocProvider(
          create: (context) =>
              HomeCubit(getIt.get<CustomerRepository>(), getIt.get<AppCubit>())
                ..getProduct(isLogin ?? false),
          child: BlocConsumer<HomeCubit, HomeState>(
            listener: (context, state) {},
            builder: (context, state) {
              if (state.isLoading) {
                return const HomeShimmerWidget();
              } else if (state.error?.isNotEmpty ?? false) {
                return ErrorScreen(
                  error: 'Oops! Đã có lỗi xảy ra',
                  hasAction: true,
                  actionTitle: 'Thử lại',
                  onTapped: () =>
                      context.read<HomeCubit>().getProduct(isLogin ?? false),
                );
              } else {
                return BlocBuilder<AppCubit, AppState>(
                    builder: (context, appState) {
                  return Column(
                    children: [
                      renderHeader(context, appState),
                      Expanded(
                          child: SingleChildScrollView(
                        physics: const BouncingScrollPhysics(),
                        child: Column(
                          children: [
                            ListCategory(listCategory: state.listCategory),
                            // const ListCountry(),
                            const DividerWidget(),
                            ListBanner(
                              brand: state.brand,
                            ),
                            DealsOfTheDay(listProduct: state.listDealsOfTheDay),
                            const DividerWidget(),
                            YourStyle(
                              listYourStyle: state.listStylesOfMe,
                              // listStyleType: state.listStyleType,
                              categoryIndex: state.yourStyleCategoryIndex,
                            ),
                            // const CountdownBanner(),
                            // ListBrand(listBrand: state.listBrand),
                            const DividerWidget(),
                            KidCorner(listKidsConner: state.listProductsByCat),
                            // Visibility(
                            //     visible: state.listVoucher.isNotEmpty,
                            //     child: ListVoucher(
                            //       listVoucher: state.listVoucher,
                            //     ))
                          ],
                        ),
                      ))
                    ],
                  );
                });
              }
            },
          )),
    );
  }
}

Widget renderHeader(BuildContext context, AppState appState) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddingScreen),
    margin: const EdgeInsets.only(bottom: kDefaultPaddingScreen),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(
              AppPath.logoSvg,
              color: Colors.black,
              width: 100.w,
            ),
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            InkWell(
              child: Container(
                padding:
                    EdgeInsets.symmetric(horizontal: kDefaultPaddingScreen.w),
                child: SvgPicture.asset(
                  AppPath.searchIcon,
                  color: Colors.black,
                  width: 20.w,
                ),
              ),
            ),
            InkWell(
              child: Container(
                padding:
                    EdgeInsets.symmetric(horizontal: kDefaultPaddingScreen.w),
                child: SvgPicture.asset(
                  AppPath.notificationIcon,
                  color: Colors.black,
                  width: 20.w,
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MultiBlocProvider(
                              providers: [
                                BlocProvider(
                                  create: (context) => CartCubit(
                                      getIt.get<CustomerRepository>()),
                                ),
                                BlocProvider(
                                  create: (context) => SelectCartCubit(),
                                ),
                                BlocProvider(
                                    create: (context) => PaymentCubit(
                                        getIt.get<CustomerRepository>()))
                              ],
                              child: CartScreen(),
                            )));
              },
              child: Container(
                padding:
                    EdgeInsets.symmetric(horizontal: kDefaultPaddingScreen.w),
                child: appState.userSession != null
                    ? Badge(
                        padding: EdgeInsets.symmetric(
                            horizontal: 2.w, vertical: 1.h),
                        shape: BadgeShape.square,
                        borderRadius: BorderRadius.circular(10.r),
                        badgeContent: Text(appState.totalCart.toString(),
                            style:
                                TextStyle(color: Colors.white, fontSize: 9.sp)),
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
          ],
        )
      ],
    ),
  );
}
