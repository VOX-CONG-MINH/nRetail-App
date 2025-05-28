import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/domain.dart';
import '../presentation.dart';

class ShopScreen extends StatefulWidget {
  const ShopScreen({super.key});

  @override
  State<ShopScreen> createState() => _ShopScreenState();
}

class _ShopScreenState extends BasePageState<ShopScreen, ShopScreenBloc> {
  final List<SubCategory> subCategories = const [
    SubCategory(
      id: '1',
      name: 'Thuốc Trừ Bệnh',
      imageUrl:
          'https://thumbs.dreamstime.com/z/flat-isolated-vector-eps-illustration-icon-minimal-design-long-shadow-plant-care-119147486.jpg?ct=jpeg',
    ),
    SubCategory(
      id: '2',
      name: 'Phân Bón',
      imageUrl:
          'https://bcp.cdnchinhphu.vn/thumb_w/777/Uploaded/truonggiangthanh/2020_12_29/2.png',
    ),
    SubCategory(
      id: '3',
      name: 'Thuốc Diệt Chồi',
      imageUrl:
          'https://thumbs.dreamstime.com/z/flat-isolated-vector-eps-illustration-icon-minimal-design-long-shadow-plant-care-119147486.jpg?ct=jpeg',
    ),
    SubCategory(
      id: '4',
      name: 'Điều Hòa Sinh Trưởng',
      imageUrl:
          'https://bizweb.dktcdn.net/100/402/805/articles/4.png?v=1720319425450',
    ),
    SubCategory(
      id: '5',
      name: 'Thuốc Diệt Cỏ',
      imageUrl:
          'https://thumbs.dreamstime.com/z/flat-isolated-vector-eps-illustration-icon-minimal-design-long-shadow-plant-care-119147486.jpg?ct=jpeg',
    ),
  ];

  final List<Product> products = const [
    Product(
      id: '1',
      name: 'AgriLife 100SL - 100ml',
      imageUrl:
          'https://tapdoanvinasa.com/wp-content/uploads/2020/01/thuoc-tru-benh-agrilife-100sl-tap-doan-vinasa-com-1.jpg',
      price: 6000,
    ),
    Product(
      id: '2',
      name: 'AgriLife 100SL - 15ml',
      imageUrl:
          'https://www.hoptrisummit.com/media/k2/items/cache/aee44fc32e47f07b5fe3050745ad94ac_XL.jpg',
      price: 1500,
    ),
    Product(
      id: '3',
      name: 'AgriLife 100SL - 100ml',
      imageUrl:
          'https://tapdoanvinasa.com/wp-content/uploads/2020/01/thuoc-tru-benh-agrilife-100sl-tap-doan-vinasa-com-1.jpg',
      price: 6000,
    ),
    Product(
      id: '4',
      name: 'AgriLife 100SL - 15ml',
      imageUrl:
          'https://www.hoptrisummit.com/media/k2/items/cache/aee44fc32e47f07b5fe3050745ad94ac_XL.jpg',
      price: 1500,
    ),
    Product(
      id: '5',
      name: 'AgriLife 100SL - 100ml',
      imageUrl:
          'https://tapdoanvinasa.com/wp-content/uploads/2020/01/thuoc-tru-benh-agrilife-100sl-tap-doan-vinasa-com-1.jpg',
      price: 6000,
    ),
    Product(
      id: '6',
      name: 'AgriLife 100SL - 15ml',
      imageUrl:
          'https://www.hoptrisummit.com/media/k2/items/cache/aee44fc32e47f07b5fe3050745ad94ac_XL.jpg',
      price: 1500,
    ),
  ];

  @override
  Widget buildPage(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: BasicAppBar(
        title: const Padding(
          padding: EdgeInsets.symmetric(vertical: 8.0),
          child: SizedBox(height: 70, child: SearchWidget()),
        ),
        actions: [
          BlocBuilder<ShopScreenBloc, ShopScreenState>(
            builder: (context, state) {
              return IconWithBadge(
                count: state.cartCount,
                icon: Icons.shopping_cart,
              );
            },
          ),
        ],
        leading: IconButton(
          icon: const Icon(Icons.home, color: Colors.white),
          onPressed: () {
            Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(builder: (_) => const MainScreen()),
              (route) => false,
            );
          },
        ),
      ),
      body: ListView(
        children: [
          const AllVendorWidget(),
          const CategoryWidget(),
          SubCategoryWidget(subCategories: subCategories),
          ListProductWidget(products: products),
        ],
      ),
    );
  }
}
