import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:heroicons/heroicons.dart';
import 'package:karer/src/styles/colors_app.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final bool darkMode = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      body: CustomScrollView(
        physics: const ClampingScrollPhysics(),
        slivers: [
          // app bar section
          SliverAppBar(
            automaticallyImplyLeading: false,
            pinned: true,
            title: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: const HeroIcon(
                      HeroIcons.arrowLongLeft,
                      size: 24,
                      style: HeroIconStyle.mini,
                    ),
                  ),
                  const Expanded(
                    child: Text(
                      "Job Details",
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const HeroIcon(
                    HeroIcons.ellipsisVertical,
                    size: 24,
                    style: HeroIconStyle.mini,
                  ),
                ],
              ),
            ),
          ),
          // company logo section
          SliverToBoxAdapter(
            child: Container(
              width: double.infinity,
              height: 132,
              padding: const EdgeInsets.only(top: 32),
              color:
                  darkMode ? ColorsApp.background900 : ColorsApp.background500,
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      height: (132 - 32) / 2,
                      decoration: BoxDecoration(
                        color: darkMode
                            ? ColorsApp.background500
                            : ColorsApp.white,
                        borderRadius: const BorderRadius.vertical(
                          top: Radius.circular(32),
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                          color: ColorsApp.gray100,
                          strokeAlign: StrokeAlign.outside,
                        ),
                      ),
                      clipBehavior: Clip.hardEdge,
                      child: Image.asset(
                        "assets/images/gojek_logo.jpg",
                        height: 100,
                        width: 100,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SliverToBoxAdapter(child: SizedBox(height: 20)),

          // job & company info section
          const SliverToBoxAdapter(
            child: Text(
              "Junior Product Designer",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SliverToBoxAdapter(child: SizedBox(height: 8)),
          const SliverToBoxAdapter(
            child: Text(
              "Gojek - Jakarta, Indonesia - 1 Day Ago",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 12,
                color: ColorsApp.gray500,
              ),
            ),
          ),
          const SliverToBoxAdapter(child: SizedBox(height: 20)),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: IntrinsicHeight(
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: const [
                          HeroIcon(
                            HeroIcons.banknotes,
                            size: 24,
                            style: HeroIconStyle.mini,
                            color: ColorsApp.primary700,
                          ),
                          SizedBox(height: 12),
                          Text(
                            "\$50k - 90k",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: 2,
                      color: darkMode ? ColorsApp.gray800 : ColorsApp.gray100,
                    ),
                    Expanded(
                      child: Column(
                        children: const [
                          HeroIcon(
                            HeroIcons.calendarDays,
                            size: 24,
                            style: HeroIconStyle.mini,
                            color: ColorsApp.primary700,
                          ),
                          SizedBox(height: 12),
                          Text(
                            "Full Time",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: 2,
                      color: darkMode ? ColorsApp.gray800 : ColorsApp.gray100,
                    ),
                    Expanded(
                      child: Column(
                        children: const [
                          HeroIcon(
                            HeroIcons.chartBar,
                            size: 24,
                            style: HeroIconStyle.mini,
                            color: ColorsApp.primary700,
                          ),
                          SizedBox(height: 12),
                          Text(
                            "Junior",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SliverToBoxAdapter(child: SizedBox(height: 20)),

          // job details section
          const SliverToBoxAdapter(
            child: Text(
              "Job Details",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SliverToBoxAdapter(child: SizedBox(height: 20)),
          SliverToBoxAdapter(
            child: Markdown(
              shrinkWrap: true,
              physics: const ClampingScrollPhysics(),
              styleSheet: MarkdownStyleSheet.fromTheme(Theme.of(context)),
              data: '''
- Working closely with product managers to understand user stories and feature requirements, thereby providing UI designs and UX prescriptions that address the user goals and pain points the product team is seeking to solve
- Conduct competitor design analysis to understand prevailing designs, and help uncover the 'why' behind such designs
- Usability test
''',
            ),
          ),
          const SliverToBoxAdapter(child: SizedBox(height: 20)),

          //  requirements section
          const SliverToBoxAdapter(
            child: Text(
              "Requirements",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SliverToBoxAdapter(child: SizedBox(height: 20)),
          SliverToBoxAdapter(
            child: Markdown(
              shrinkWrap: true,
              physics: const ClampingScrollPhysics(),
              styleSheet: MarkdownStyleSheet.fromTheme(Theme.of(context)),
              data: '''
- Minimum 3 years of experience in Product Design capacity
- Ability to work with and contribute to our Design System in Figma
- You are user-centric, with a keen empathy - going beyond just listening to user feedback, but understanding the situation and context that they are in as they encounter our product
- You have a strong design portfolio under your belt, demonstrating your experience in crafting design that pays attention to user interaction details and thinking
- Experience working in payment space or eCommerce
- You appreciate the importance of both 'imitation' and 'innovatio'  in design work, and often back your design output with research and data
- While you appreciate product scoping directions from product managers, you are at the same time self-directive, being able to form your own design decisions and roadmap once you have understood user needs/product OKRs
- You possess the skill sets needed to execute strongly as a product designer being part of a fast-moving scrum team - the ability to iterate from raw to mature design rapidly, to modify/discard design versions due to scope changes, to carefully simplify designs in the face of tight front-end development schedules, all the while playing an active role in these undertakings
''',
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: darkMode ? ColorsApp.background500 : ColorsApp.white,
          border: Border(
            top: BorderSide(
              color: darkMode ? ColorsApp.gray800 : ColorsApp.gray100,
            ),
          ),
        ),
        child: SafeArea(
          child: IntrinsicHeight(
            child: Row(
              children: [
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                        darkMode ? ColorsApp.gray800 : ColorsApp.gray100,
                    foregroundColor: ColorsApp.primary700,
                    padding: const EdgeInsets.all(12),
                    elevation: 0,
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    minimumSize: Size.zero,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: const HeroIcon(
                    HeroIcons.heart,
                    size: 24,
                    color: ColorsApp.primary700,
                  ),
                ),
                const SizedBox(width: 20),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: ColorsApp.primary700,
                      foregroundColor: ColorsApp.gray100,
                      padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
                      elevation: 0,
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      fixedSize: const Size.fromHeight(48),
                      textStyle: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: const Text("Apply Now"),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
