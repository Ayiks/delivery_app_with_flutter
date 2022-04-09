import 'package:flutter/material.dart';
import 'package:food_delivery/utils/colors.dart';
import 'package:food_delivery/utils/dimension.dart';
import 'package:food_delivery/widgets/app_icon.dart';
import 'package:food_delivery/widgets/big_text.dart';
import 'package:food_delivery/widgets/expandable_text_widget.dart';

class RecommendedFoodDetails extends StatelessWidget {
  const RecommendedFoodDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: 70,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(icon: Icons.clear),
                AppIcon(icon: Icons.shopping_cart_outlined)
              ],
            ),
            bottom: PreferredSize(
                child: Container(
                    width: double.maxFinite,
                    padding: EdgeInsets.only(top: 5, bottom: 10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(Dimensions.radius20),
                            topRight: Radius.circular(Dimensions.radius20))),
                    child: Center(
                        child: BigText(
                      text: 'Chinese Side ',
                      size: Dimensions.font26,
                    ))),
                preferredSize: Size.fromHeight(20)),
            pinned: true,
            backgroundColor: AppColors.yellowColor,
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                "assets/image/food0.png",
                width: double.maxFinite,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                  child: ExpandableTextWidget(
                      text:
                          'Lorem Ispum Something something Lorem Ispum Something something Lorem Ispum Something something Lorem Ispum Something something Lorem Ispum Something something Lorem Ispum Something something Lorem Ispum Something something Lorem Ispum Something something Lorem Ispum Something something Lorem Ispum Something something Lorem Ispum Something something Lorem Ispum Something something Lorem Ispum Something something, color: AppColors.paraColor, color: AppColors.paraColor, color: AppColors.paraColor, color: AppColors.paraColor,Lorem Ispum Something something Lorem Ispum Something something Lorem Ispum Something something Lorem Ispum Something something Lorem Ispum Something something Lorem Ispum Something something Lorem Ispum Something something Lorem Ispum Something something Lorem Ispum Something something Lorem Ispum Something something Lorem Ispum Something something Lorem Ispum Something something Lorem Ispum Something something, color: AppColors.paraColor, color: AppColors.paraColor, color: AppColors.paraColor, color: AppColors.paraColor,Lorem Ispum Something something Lorem Ispum Something something Lorem Ispum Something something Lorem Ispum Something something Lorem Ispum Something something Lorem Ispum Something something Lorem Ispum Something something Lorem Ispum Something something Lorem Ispum Something something Lorem Ispum Something something Lorem Ispum Something something Lorem Ispum Something something Lorem Ispum Something something, color: AppColors.paraColor, color: AppColors.paraColor, color: AppColors.paraColor, color: AppColors.paraColor,Lorem Ispum Something something Lorem Ispum Something something Lorem Ispum Something something Lorem Ispum Something something Lorem Ispum Something something Lorem Ispum Something something Lorem Ispum Something something Lorem Ispum Something something Lorem Ispum Something something Lorem Ispum Something something Lorem Ispum Something something Lorem Ispum Something something Lorem Ispum Something something, color: AppColors.paraColor, color: AppColors.paraColor, color: AppColors.paraColor, color: AppColors.paraColor,Lorem Ispum Something something Lorem Ispum Something something Lorem Ispum Something something Lorem Ispum Something something Lorem Ispum Something something Lorem Ispum Something something Lorem Ispum Something something Lorem Ispum Something something Lorem Ispum Something something Lorem Ispum Something something Lorem Ispum Something something Lorem Ispum Something something Lorem Ispum Something something, color: AppColors.paraColor, color: AppColors.paraColor, color: AppColors.paraColor, color: AppColors.paraColor,Lorem Ispum Something something Lorem Ispum Something something Lorem Ispum Something something Lorem Ispum Something something Lorem Ispum Something something Lorem Ispum Something something Lorem Ispum Something something Lorem Ispum Something something Lorem Ispum Something something Lorem Ispum Something something Lorem Ispum Something something Lorem Ispum Something something Lorem Ispum Something something, color: AppColors.paraColor, color: AppColors.paraColor, color: AppColors.paraColor, color: AppColors.paraColor,Lorem Ispum Something something Lorem Ispum Something something Lorem Ispum Something something Lorem Ispum Something something Lorem Ispum Something something Lorem Ispum Something something Lorem Ispum Something something Lorem Ispum Something something Lorem Ispum Something something Lorem Ispum Something something Lorem Ispum Something something Lorem Ispum Something something Lorem Ispum Something something, color: AppColors.paraColor, color: AppColors.paraColor, color: AppColors.paraColor, color: AppColors.paraColor,Lorem Ispum Something something Lorem Ispum Something something Lorem Ispum Something something Lorem Ispum Something something Lorem Ispum Something something Lorem Ispum Something something Lorem Ispum Something something Lorem Ispum Something something Lorem Ispum Something something Lorem Ispum Something something Lorem Ispum Something something Lorem Ispum Something something Lorem Ispum Something something, color: AppColors.paraColor, color: AppColors.paraColor, color: AppColors.paraColor, color: AppColors.paraColor,'),
                  margin: EdgeInsets.only(
                      left: Dimensions.width20, right: Dimensions.width20),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
