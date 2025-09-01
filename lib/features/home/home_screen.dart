import 'package:flutter/material.dart';
import 'package:online_store/common/utils/app_colors.dart';
import 'package:online_store/common/utils/assets_path.dart';
import 'package:online_store/features/home/widgets/categories_gridview.dart';
import 'package:online_store/features/home/widgets/home_card_section.dart';
import 'package:online_store/features/home/widgets/home_custom_carousel.dart';
import 'package:online_store/features/home/widgets/search_bar_widget.dart';
import 'package:online_store/features/home/widgets/section_header.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: SizedBox(
            width: 100,
            child: Image.asset(AssetsPath.appLogoPNG)),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications_active_outlined,color: AppColors.themeColor,),
            onPressed: () {
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 10,),
            SearchBarWidget(),
            SizedBox(height: 10,),
            HomeCustomCarousel(),
            SectionHeader(title: 'All Categories', onTap: (){}),
            CategoriesGridview(),
            SectionHeader(title: 'Popular', onTap: (){}),
            HomeCardSection(popularProducts: AssetsPath().demoGridProductsCard),
            SectionHeader(title: 'Special', onTap: (){}),
            HomeCardSection(popularProducts: AssetsPath().demoGridProductsCard),
            SectionHeader(title: 'New', onTap: (){}),
            HomeCardSection(popularProducts: AssetsPath().demoGridProductsCard),
          ],
        ),
      ),
    );
  }
}






