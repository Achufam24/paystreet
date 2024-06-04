import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:paystreet/src/app/styles/styles.dart';
import 'package:paystreet/src/core/constants/constant.dart';
import 'package:paystreet/src/features/presentation/presentation.dart';

class HomeNavigation extends StatefulWidget {
  const HomeNavigation({super.key, this.fixedIndex});

  final int? fixedIndex;

  @override
  State<HomeNavigation> createState() => _HomeNavigationState();
}

class _HomeNavigationState extends State<HomeNavigation> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    if (mounted) {
      setState(() {
        _selectedIndex = index;
      });
    }
  }


  @override
  void initState() {
    super.initState();
    if (widget.fixedIndex!= null) {
      _selectedIndex = widget.fixedIndex!.toInt();
      _onItemTapped(_selectedIndex);
    }else{
      _onItemTapped(_selectedIndex);
    }

  }

  @override
  void dispose() {
    if (mounted) {
      _onItemTapped(_selectedIndex);
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final tabs = [
      const DashboardView(),
      const Placeholder(),
      const Placeholder(),
      const Placeholder()
    ];
    return Scaffold(
      body: tabs[_selectedIndex],
      bottomNavigationBar: SizedBox(
       
        child: BottomNavigationBar(
          iconSize: 60,
          type: BottomNavigationBarType.fixed,
          elevation: 30,
          selectedItemColor: AppColors.primaryColor,
          selectedFontSize: 12,
          unselectedFontSize: 12,
          currentIndex: _selectedIndex,
          enableFeedback: true,
          selectedLabelStyle: const TextStyle(
            color: AppColors.primaryColor,
            fontSize: 12,
            fontFamily: AppFonts.manRope,
            fontWeight: FontWeight.w500
          ),
          unselectedLabelStyle: const TextStyle(
            color: AppColors.textPrimaryColor2,
            fontSize: 12,
            fontFamily: AppFonts.manRope,
            fontWeight: FontWeight.w500
          ),
          onTap: _onItemTapped,
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset(AppAsset.homeIcon),
              activeIcon: SvgPicture.asset(AppAsset.homeIcon,),
              label: '',
            ),
             BottomNavigationBarItem(
              icon: SvgPicture.asset(AppAsset.walletIcon,),
              activeIcon: SvgPicture.asset(AppAsset.walletIcon, ),
              label: '',
            ),

             BottomNavigationBarItem(
             icon: SvgPicture.asset(AppAsset.statsIcon),
              activeIcon: SvgPicture.asset(AppAsset.statsIcon,),
              label: '',
            ),
             BottomNavigationBarItem(
           icon: SvgPicture.asset(AppAsset.accountIcon),
              activeIcon: SvgPicture.asset(AppAsset.accountIcon),
              label: '',
            ),
          ],
        ),
      ),
    );
  }
}