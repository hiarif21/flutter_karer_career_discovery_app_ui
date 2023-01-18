import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:heroicons/heroicons.dart';
import 'package:karer/src/screens/home_screen/widgets/bottom_navigation_item_widget.dart';
import 'package:karer/src/screens/home_screen/widgets/category_button_widget.dart';
import 'package:karer/src/screens/home_screen/widgets/pinned_job_card_widget.dart';
import 'package:karer/src/screens/home_screen/widgets/recent_job_card_widget.dart';
import 'package:karer/src/styles/colors_app.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        physics: const ClampingScrollPhysics(),
        slivers: [
          // app bar section
          SliverAppBar(
            toolbarHeight: 64,
            pinned: true,
            title: Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                children: const [
                  HeroIcon(
                    HeroIcons.bars3,
                    size: 24,
                    color: ColorsApp.white,
                  ),
                  Spacer(),
                  HeroIcon(
                    HeroIcons.magnifyingGlass,
                    size: 24,
                    color: ColorsApp.white,
                  ),
                  SizedBox(width: 16),
                  HeroIcon(
                    HeroIcons.bell,
                    size: 24,
                    color: ColorsApp.white,
                  ),
                ],
              ),
            ),
          ),

          // headline section
          SliverToBoxAdapter(
            child: Container(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
              color: ColorsApp.background500,
              child: const Text(
                "Discover your\ndream job",
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: ColorsApp.white,
                ),
              ),
            ),
          ),

          // pinned job section
          SliverToBoxAdapter(
            child: Container(
              height: 183,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    ColorsApp.background500,
                    ColorsApp.background500,
                    ColorsApp.white,
                    ColorsApp.white,
                  ],
                  stops: [
                    0.0,
                    0.5,
                    0.5,
                    1.0,
                  ],
                ),
              ),
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                children: const [
                  PinnedJobCardWidget(
                    companyLogo: "assets/images/gojek_logo.jpg",
                    companyName: "Gojek",
                    companyLocation: "Jakarta, Indonesia",
                    jobName: "Junior Product Designer",
                    salaryRange: "\$50k - 90k",
                    jobType: "Full Time",
                    marked: true,
                  ),
                  SizedBox(width: 12),
                  PinnedJobCardWidget(
                    companyLogo: "assets/images/amazon_logo.jpg",
                    companyName: "Amazon",
                    companyLocation: "Berlin, German",
                    jobName: "Mobile Developer",
                    salaryRange: "\$90k - 150k",
                    jobType: "Full Time",
                    marked: false,
                  ),
                  SizedBox(width: 12),
                  PinnedJobCardWidget(
                    companyLogo: "assets/images/google_logo.jpg",
                    companyName: "Google",
                    companyLocation: "Jakarta, Indonesia",
                    jobName: "Creative Development Lead",
                    salaryRange: "\$90k - 150k",
                    jobType: "Full Time",
                    marked: false,
                  ),
                ],
              ),
            ),
          ),

          // categories section
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                  child: Text(
                    "Top Categories",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                SizedBox(
                  height: 31,
                  child: ListView(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    scrollDirection: Axis.horizontal,
                    children: [
                      CategoryButtonWidget(
                        category: "Engineering",
                        active: true,
                        onPressed: () {},
                      ),
                      const SizedBox(width: 12),
                      CategoryButtonWidget(
                        category: "Design",
                        onPressed: () {},
                      ),
                      const SizedBox(width: 12),
                      CategoryButtonWidget(
                        category: "Mobile",
                        onPressed: () {},
                      ),
                      const SizedBox(width: 12),
                      CategoryButtonWidget(
                        category: "Programmer",
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          // recents job section
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 32, 20, 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Recent Jobs",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "See All",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: ColorsApp.primary700,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              const [
                RecentJobCardWidget(
                  companyLogo: "assets/images/gojek_logo.jpg",
                  companyName: "Gojek",
                  companyLocation: "Jakarta, Indonesia",
                  jobName: "Junior Product Designer",
                  salaryRange: "\$50k - 90k",
                  jobType: "Full Time",
                  postDate: "1 Day Ago",
                ),
                RecentJobCardWidget(
                  companyLogo: "assets/images/amazon_logo.jpg",
                  companyName: "Amazon",
                  companyLocation: "Berlin, German",
                  jobName: "Mobile Developer",
                  salaryRange: "\$90k - 150k",
                  jobType: "Full Time",
                  postDate: "1 Day Ago",
                ),
                RecentJobCardWidget(
                  companyLogo: "assets/images/google_logo.jpg",
                  companyName: "Google",
                  companyLocation: "Jakarta, Indonesia",
                  jobName: "Creative Development Lead",
                  salaryRange: "\$90k - 150k",
                  jobType: "Full Time",
                  postDate: "1 Day Ago",
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
        decoration: BoxDecoration(
          color: ColorsApp.white,
          border: Border(
            top: BorderSide(
              color: ColorsApp.gray100,
            ),
          ),
        ),
        child: SafeArea(
          child: Row(
            children: const [
              Expanded(
                child: BottomNavigationItemWidget(
                  icon: HeroIcons.home,
                  active: true,
                ),
              ),
              SizedBox(width: 20),
              Expanded(
                child: BottomNavigationItemWidget(
                  icon: HeroIcons.clipboard,
                ),
              ),
              SizedBox(width: 20),
              Expanded(
                child: BottomNavigationItemWidget(
                  icon: HeroIcons.heart,
                ),
              ),
              SizedBox(width: 20),
              Expanded(
                child: BottomNavigationItemWidget(
                  icon: HeroIcons.envelope,
                ),
              ),
              SizedBox(width: 20),
              Expanded(
                child: BottomNavigationItemWidget(
                  icon: HeroIcons.user,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
