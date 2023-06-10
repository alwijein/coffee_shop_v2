import 'package:babylonjs_viewer/babylonjs_viewer.dart';
import 'package:coffee_shop_v2/config/config.dart';
import 'package:coffee_shop_v2/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return GetBuilder<HomeController>(
      init: HomeController(),
      builder: (_) {
        return Scaffold(
          body: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  alignment: Alignment.topLeft,
                  children: [
                    Container(
                      width: double.infinity,
                      height: getPropertionateScreenWidht(347 + 50),
                    ),
                    Positioned(
                      right: 0,
                      child: Container(
                        height: getPropertionateScreenWidht(347),
                        width: SizeConfig.screenWidth / 2,
                        decoration: const BoxDecoration(
                          color: Color(0xFFFFF3EA),
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(12),
                            bottomRight: Radius.circular(12),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(
                          PaddingCollections.defaultPadding),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: Container(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor:
                                              ColorCollections.backgroundColor2,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(12),
                                          ),
                                        ),
                                        onPressed: () {},
                                        child: Text(
                                          'Add to Cart',
                                          style: TextCollections
                                              .primaryLightTextStyle
                                              .copyWith(
                                            color:
                                                ColorCollections.primaryColor,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: getPropertionateScreenWidht(41),
                                      ),
                                      ListView.builder(
                                        itemCount: 3,
                                        shrinkWrap: true,
                                        itemBuilder: (_, index) {
                                          return SizeShape(
                                            size: controller.listSize[index],
                                            isChoose:
                                                controller.isChooseList[index],
                                            onChoose: (isSelected) {
                                              controller.onSizeSelected(index);
                                            },
                                          );
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  width: double.infinity,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text(
                                        'Asian Dolce Latte',
                                        style: TextCollections.primaryTextStyle
                                            .copyWith(
                                          fontWeight: TextCollections.bold,
                                        ),
                                      ),
                                      SizedBox(
                                        height: getPropertionateScreenWidht(14),
                                      ),
                                      Text(
                                        'Rp.60.000',
                                        style: TextCollections.subtitleTextStyle
                                            .copyWith(
                                          fontSize: 14,
                                        ),
                                      ),
                                      SizedBox(
                                        height: getPropertionateScreenWidht(30),
                                      ),
                                      Center(
                                        child: GetBuilder<HomeController>(
                                          builder: (controller) {
                                            final selectedSize =
                                                controller.sizeList[
                                                    controller.index.value];
                                            return AnimatedContainer(
                                              duration: const Duration(
                                                  milliseconds: 200),
                                              height:
                                                  getPropertionateScreenWidht(
                                                      290 - 30),
                                              width:
                                                  getPropertionateScreenWidht(
                                                      selectedSize),
                                              child: Image.asset(
                                                'assets/starbucks_cup.png',
                                                height: 10,
                                              ),
                                            );
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding:
                      const EdgeInsets.all(PaddingCollections.defaultPadding),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Explanation',
                        style: TextCollections.primaryTextStyle.copyWith(
                          color: ColorCollections.primaryColor,
                          fontWeight: TextCollections.medium,
                        ),
                      ),
                      SizedBox(
                        height: getPropertionateScreenWidht(12),
                      ),
                      Text(
                        'Asian Dolce Latte adalah salah satu menu minuman kopi yang ditawarkan oleh Starbucks. Minuman ini merupakan variasi dari Latte yang diinspirasi oleh rasa tradisional Asia, dengan sentuhan manis yang khas.',
                        style: TextCollections.subtitleTextStyle.copyWith(
                          fontSize: 14,
                        ),
                      ),
                      SizedBox(
                        height: getPropertionateScreenWidht(18),
                      ),
                      Text(
                        'Coffee Properties',
                        style: TextCollections.primaryTextStyle.copyWith(
                          color: ColorCollections.primaryColor,
                          fontWeight: TextCollections.medium,
                        ),
                      ),
                      SizedBox(
                        height: getPropertionateScreenWidht(12),
                      ),
                      Row(
                        children: const [
                          CoffeePropertiesItem(
                            title: 'Coffee',
                            subtitle: 'Colombia',
                          ),
                          SizedBox(
                            width: 18,
                          ),
                          CoffeePropertiesItem(
                            title: 'Calorie',
                            subtitle: '130 kcal',
                          ),
                        ],
                      ),
                      SizedBox(
                        height: getPropertionateScreenWidht(12),
                      ),
                      Row(
                        children: const [
                          CoffeePropertiesItem(
                            title: 'Sugar ratio',
                            subtitle: '%12',
                          ),
                          SizedBox(
                            width: 18,
                          ),
                          CoffeePropertiesItem(
                            title: 'Score',
                            subtitle: '4.5',
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class CoffeePropertiesItem extends StatelessWidget {
  const CoffeePropertiesItem({
    super.key,
    required this.title,
    required this.subtitle,
  });

  final String title, subtitle;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(PaddingCollections.defaultPadding),
            decoration: BoxDecoration(
              color: ColorCollections.primaryLightColor,
              borderRadius: BorderRadius.circular(12),
            ),
            child: SvgPicture.asset(
              'assets/coffe_icon.svg',
            ),
          ),
          SizedBox(
            width: getPropertionateScreenWidht(8),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextCollections.primaryTextStyle.copyWith(
                  fontWeight: TextCollections.medium,
                  fontSize: 14,
                ),
              ),
              Text(
                subtitle,
                style: TextCollections.subtitleTextStyle.copyWith(
                  fontSize: 14,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class SizeShape extends StatelessWidget {
  const SizeShape({
    Key? key,
    required this.size,
    required this.isChoose,
    required this.onChoose,
  }) : super(key: key);

  final String size;
  final bool isChoose;
  final ValueChanged<bool> onChoose;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: getPropertionateScreenWidht(30),
      ),
      child: Row(
        children: [
          GestureDetector(
            onTap: () {
              onChoose(!isChoose);
            },
            child: Container(
              width: getPropertionateScreenWidht(44),
              height: getPropertionateScreenWidht(44),
              decoration: BoxDecoration(
                color: isChoose
                    ? ColorCollections.primaryColor
                    : Color(0xFFF2F2F2),
                shape: BoxShape.circle,
              ),
              child: Center(
                child: Text(
                  size[0],
                  style: TextCollections.whiteTextStyle.copyWith(
                    color: isChoose ? Colors.white : const Color(0xFF77838F),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            width: getPropertionateScreenWidht(8),
          ),
          Text(
            size.substring(1),
            style: TextCollections.primaryTextStyle,
          ),
        ],
      ),
    );
  }
}
