import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../presentation.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends BasePageState<MainScreen, MainScreenBloc> {
  final List<Widget> _pages = const [
    HomeScreen(),
    ShopScreen(),
    Placeholder(),
    Placeholder(),
    Placeholder(),
  ];

  @override
  Widget buildPage(BuildContext context) {
    return BlocBuilder<MainScreenBloc, MainScreenState>(
      builder: (context, state) {
        return Scaffold(
          body: _pages[state.selectedIndex],
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: state.selectedIndex,
            onTap: (index) {
              context.read<MainScreenBloc>().add(ChangeTabEvent(index: index));
            },
            selectedItemColor: const Color(0xFFD5262B),
            unselectedItemColor: Colors.grey,
            showUnselectedLabels: true,
            items: [
              _buildNavBarItem(
                assetPath: Assets.icons.icBotHomepage.path,
                assetPathFocus: Assets.icons.icBotHomepageFocus.path,
                label: 'Home',
                selectedIndex: state.selectedIndex,
                index: 0,
              ),
              _buildNavBarItem(
                assetPath: Assets.icons.icBotCategory.path,
                assetPathFocus: Assets.icons.icBotCategoryFocus.path,
                label: 'Shop',
                selectedIndex: state.selectedIndex,
                index: 1,
              ),
              _buildNavBarItem(
                assetPath: Assets.icons.icBotMessenger.path,
                assetPathFocus: Assets.icons.icBotMessengerFocus.path,
                label: 'Messages',
                selectedIndex: state.selectedIndex,
                index: 2,
              ),
              _buildNavBarItem(
                assetPath: Assets.icons.icBotShop.path,
                assetPathFocus: Assets.icons.icBotShopFocus.path,
                label: 'Shop',
                selectedIndex: state.selectedIndex,
                index: 3,
              ),
              _buildNavBarItem(
                assetPath: Assets.icons.icBotAccount.path,
                assetPathFocus: Assets.icons.icBotAccountFocus.path,
                label: 'Account',
                selectedIndex: state.selectedIndex,
                index: 4,
              ),
            ],
          ),
        );
      },
    );
  }

  BottomNavigationBarItem _buildNavBarItem({
    required String assetPath,
    required String assetPathFocus,
    required String label,
    required int selectedIndex,
    required int index,
  }) {
    return BottomNavigationBarItem(
      icon: Image.asset(
        selectedIndex == index ? assetPathFocus : assetPath,
        width: 24,
        height: 24,
      ),
      label: label,
    );
  }
}
