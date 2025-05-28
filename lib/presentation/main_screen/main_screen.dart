import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../presentation.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends BasePageState<MainScreen, MainScreenBloc> {
  final List<Widget> _pages = [
    const HomeScreen(),
    const ShopScreen(),
    const Placeholder(),
    const Placeholder(),
    const Placeholder(),
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
              BottomNavigationBarItem(
                icon: _buildIcon(
                  assetPath: Assets.icons.icBotHomepage.path,
                  assetPathFocus: Assets.icons.icBotHomepageFocus.path,
                  selectedIndex: state.selectedIndex,
                  index: 0,
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: _buildIcon(
                  assetPath: Assets.icons.icBotCategory.path,
                  assetPathFocus: Assets.icons.icBotCategoryFocus.path,
                  selectedIndex: state.selectedIndex,
                  index: 1,
                ),
                label: 'Shop',
              ),
              BottomNavigationBarItem(
                icon: _buildIcon(
                  assetPath: Assets.icons.icBotMessenger.path,
                  assetPathFocus: Assets.icons.icBotMessengerFocus.path,
                  selectedIndex: state.selectedIndex,
                  index: 2,
                ),
                label: 'Messages',
              ),
              BottomNavigationBarItem(
                icon: _buildIcon(
                  assetPath: Assets.icons.icBotShop.path,
                  assetPathFocus: Assets.icons.icBotShopFocus.path,
                  selectedIndex: state.selectedIndex,
                  index: 3,
                ),
                label: 'Shop',
              ),
              BottomNavigationBarItem(
                icon: _buildIcon(
                  assetPath: Assets.icons.icBotAccount.path,
                  assetPathFocus: Assets.icons.icBotAccountFocus.path,
                  selectedIndex: state.selectedIndex,
                  index: 4,
                ),
                label: 'Account',
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildIcon({
    required String assetPath,
    required String assetPathFocus,
    required int selectedIndex,
    required int index,
  }) {
    return Image.asset(
      selectedIndex == index ? assetPathFocus : assetPath,
      width: 24,
      height: 24,
    );
  }
}
