import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:mubaha/data/repository/customer/customer_repository.dart';
import 'package:mubaha/icons/my_flutter_app_icons.dart';
import 'package:mubaha/injection.dart';
import 'package:mubaha/ui/screen/main/cart/cart_screen.dart';
import 'package:mubaha/ui/screen/main/cart/cubit/cart_cubit/cart_cubit.dart';
import 'package:mubaha/ui/screen/main/cart/cubit/select_cart_cubit/select_cart_cubit.dart';
import 'package:mubaha/ui/screen/main/category/category_screen.dart';
import 'package:mubaha/ui/screen/main/favorite/favorite_screen.dart';
import 'package:mubaha/ui/screen/main/home/home_screen.dart';
import 'package:mubaha/ui/screen/main/payment/cubit/payment_cubit.dart';
import 'package:mubaha/ui/screen/main/profile/profile_screen.dart';
import 'package:mubaha/ui/theme/constant.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  var tabIndex = 0;

  final _screenList = [
    const HomeScreen(),
    const CategoryScreen(),
    MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => CartCubit(getIt.get<CustomerRepository>()),
        ),
        BlocProvider(
          create: (context) => SelectCartCubit(),
        ),
        BlocProvider(
            create: (context) => PaymentCubit(getIt.get<CustomerRepository>()))
      ],
      child: CartScreen(
        isBack: false,
      ),
    ),
    const FavoriteScreen(),
    const ProfileScreen()
  ];

  void changeTabIndex(int index) {
    setState(() {
      tabIndex = index;
    });
  }

  getScreen() => _screenList[tabIndex];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: getScreen(),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 3,
              offset: const Offset(0, 4), // changes position of shadow
            ),
          ],
        ),
        child: BottomNavigationBar(
          selectedFontSize: 12,
          unselectedFontSize: 12,
          // selectedLabelStyle: TextStyle(fontSize: ),
          onTap: changeTabIndex,
          currentIndex: tabIndex,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: primaryColor,
          unselectedItemColor: bottomUnselectColor,
          elevation: 0,
          items: [
            BottomNavigationBarItem(
                icon: Padding(
                    padding: EdgeInsets.only(bottom: 6.h, top: 6.h),
                    child: const Icon(
                      Ionicons.home,
                      size: 20,
                    )),
                label: 'Trang chủ'),
            BottomNavigationBarItem(
                icon: Padding(
                    padding: EdgeInsets.only(bottom: 6.h, top: 6.h),
                    child: const Icon(
                      Ionicons.grid_outline,
                      size: 20,
                    )),
                label: 'Thể loại'),
            BottomNavigationBarItem(
                icon: Padding(
                  padding: EdgeInsets.only(bottom: 6.h, top: 6.h),
                  child: const Icon(
                    MyFlutterApp.cart,
                    size: 20,
                  ),
                ),
                label: 'Giỏ hàng'),
            BottomNavigationBarItem(
                icon: Padding(
                    padding: EdgeInsets.only(bottom: 6.h, top: 6.h),
                    child: const Icon(
                      Ionicons.heart_outline,
                      size: 20,
                    )),
                label: 'Yêu thích'),
            BottomNavigationBarItem(
                icon: Padding(
                  padding: EdgeInsets.only(bottom: 6.h, top: 6.h),
                  child: const Icon(
                    Ionicons.person_outline,
                    size: 20,
                  ),
                ),
                label: 'Tài khoản')
          ],
        ),
      ),
    );
  }
}