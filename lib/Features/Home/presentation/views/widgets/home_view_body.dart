import 'package:book_store_app/Features/Home/presentation/views/widgets/custom_app_bar.dart';
import 'package:book_store_app/Features/Home/presentation/views/widgets/custom_list_view_item.dart';
import 'package:book_store_app/core/utils/size_config.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [CustomAppBar(), FeaturedBooksListView()],
    );
  }
}

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: SizeConfig.screenHeight! * 0.3,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: FeaturedListViewItem(),
          );
        },
      ),
    );
  }
}
