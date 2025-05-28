import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nretail_app/domain/domain.dart';

import '../presentation.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends BasePageState<HomeScreen, HomeScreenBloc> {
  final ScrollController _scrollController = ScrollController();

  final List<BannerEntity> banners = [
    BannerEntity(
      id: '1',
      imageUrl:
          'https://nretail.asia/wp-content/uploads/2020/07/banner_ENG.png',
    ),
    BannerEntity(
      id: '2',
      imageUrl:
          'https://nretail.asia/wp-content/uploads/2020/07/nretail-hqsoft.com_.vn_-1.png',
    ),
  ];

  final List<Vendor> vendors = [
    Vendor(
      id: '1',
      name: 'Vendor 1',
      imageUrl:
          'https://blog.tipranks.com/wp-content/uploads/2020/08/shutterstock_1688164423-4-750x406.jpg',
    ),
    Vendor(
      id: '2',
      name: 'Vendor 2',
      imageUrl:
          'https://media.tapchitaichinh.vn/w1480/images/upload//2024/02/28/pfize.jpg',
    ),
    Vendor(
      id: '3',
      name: 'Vendor 3',
      imageUrl:
          'https://www.shutterstock.com/shutterstock/photos/583225159/display_1500/stock-vector-vendor-logo-template-design-vector-583225159.jpg',
    ),
  ];

  final List<Product> products = [
    Product(
      id: '1',
      name: 'Carefree Breathable',
      imageUrl:
          'https://www.rosepharmacy.com/ph1/wp-content/uploads/2020/01/17261-800x931.webp',

      price: 47.40,
    ),
    Product(
      id: '2',
      name: 'Carefree Breathable 40',
      imageUrl:
          'https://www.rosepharmacy.com/ph1/wp-content/uploads/2020/01/67413-800x931.webp',

      price: 23.25,
    ),
    Product(
      id: '3',
      name: 'Carefree Breathable 15',
      imageUrl:
          'https://www.rosepharmacy.com/ph1/wp-content/uploads/2020/01/18662-300x360.webp',
      price: 86.60,
    ),
    Product(
      id: '4',
      name: 'Carefree Breathable',
      imageUrl:
          'https://www.rosepharmacy.com/ph1/wp-content/uploads/2020/01/17261-800x931.webp',

      price: 47.40,
    ),
    Product(
      id: '5',
      name: 'Band Aid Plaster Strips 50 Pack',
      imageUrl:
          'https://www.oceaniamedical.co.nz/cdn/shop/products/ba-fabric-strip-50.png?v=1587347996&width=1800',

      price: 63.10,
    ),
    Product(
      id: '6',
      name: 'Carefree Breathable 15',
      imageUrl:
          'https://www.rosepharmacy.com/ph1/wp-content/uploads/2020/01/18662-300x360.webp',
      price: 86.60,
    ),
  ];

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      final showSearch = _scrollController.offset > 80;
      if (showSearch != bloc.state.showSearch) {
        bloc.add(ShowSearchChanged(showSearch: showSearch));
      }
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget buildPage(BuildContext context) {
    return BlocBuilder<HomeScreenBloc, HomeScreenState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: Colors.white,
          appBar: BasicAppBar(
            title:
                state.showSearch
                    ? const Padding(
                      padding: EdgeInsets.symmetric(vertical: 8.0),
                      child: SizedBox(height: 70, child: SearchWidget()),
                    )
                    : const Text(
                      'nRetail',
                      style: TextStyle(color: Colors.white),
                    ),
            actions: [
              IconButton(
                icon: const Icon(Icons.shopping_cart, color: Colors.white),
                onPressed: () {},
              ),
              IconWithBadge(count: 5, icon: Icons.notifications),
            ],
          ),
          body: ListView(
            controller: _scrollController,
            children: [
              Stack(
                children: [
                  Container(
                    padding: const EdgeInsets.only(top: 10),
                    height: 150,
                    decoration: const BoxDecoration(
                      color: AppColors.primary,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.elliptical(200, 50),
                        bottomRight: Radius.elliptical(200, 50),
                      ),
                    ),
                    child: const SearchWidget(),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 90, bottom: 20),
                    child: BannerWidget(banners: banners),
                  ),
                ],
              ),
              const Divider(height: 1, thickness: 4),
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: ConnectVendorWidget(vendors: vendors),
              ),
              const Divider(height: 1, thickness: 4),
              BoughtProductWidget(products: products),
            ],
          ),
        );
      },
    );
  }
}
