import 'package:flutter/material.dart';
import 'package:flutter_real_estate/buttombar.dart';
import 'package:flutter_real_estate/buyandsell.dart';
import 'package:flutter_real_estate/propertycards.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              pinned: true,
              automaticallyImplyLeading: false,
              backgroundColor: Colors.blue,
              expandedHeight: height * 0.18,

              flexibleSpace: FlexibleSpaceBar(
                collapseMode: CollapseMode.pin,
                background: Padding(
                  padding: EdgeInsets.all(20),
                  child: Row(
                    crossAxisAlignment: .start,
                    children: [
                      Column(
                        crossAxisAlignment: .start,
                        children: [
                          Text(
                            'Location',
                            style: TextStyle(fontSize: 15, color: Colors.white),
                          ),
                          Row(
                            children: [
                              Text(
                                'Bahawalpur',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                ),
                              ),
                              Icon(
                                Icons.keyboard_arrow_down,
                                color: Colors.white,
                              ),
                            ],
                          ),
                        ],
                      ),

                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(top: 6),
                        child: Icon(
                          Icons.notifications_active_outlined,
                          size: 28,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(width: width * 0.01),
                      CircleAvatar(
                        backgroundColor: Colors.blue,
                        child: Icon(
                          Icons.person,
                          size: 30,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              bottom: PreferredSize(
                preferredSize: Size.fromHeight(height * 0.08),
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Row(
                    children: [
                      Expanded(
                        child: SizedBox(
                          height: height * 0.055,
                          child: TextField(
                            textAlignVertical: TextAlignVertical.center,
                            textInputAction: TextInputAction.search,
                            decoration: InputDecoration(
                              isDense: true,
                              fillColor: Colors.white,
                              filled: true,

                              border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              hintText: 'Search',
                              hintStyle: TextStyle(
                                fontSize: 16,
                                color: Colors.grey.shade700,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: width * 0.02),
                      Icon(Icons.tune, size: 28, color: Colors.white),
                    ],
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(child: SizedBox(height: height * 0.02)),
            SliverToBoxAdapter(child: BuyAndSellButton()),

            SliverToBoxAdapter(child: SizedBox(height: height * 0.03)),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Row(
                  crossAxisAlignment: .center,
                  mainAxisAlignment: .spaceBetween,
                  children: [
                    Text(
                      'Featured Properties',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: .bold,
                      ),
                    ),
                    Text(
                      'View All',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.blue,
                        fontWeight: .bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            SliverToBoxAdapter(child: SizedBox(height: height * 0.01)),
            SliverToBoxAdapter(
              child: SizedBox(
                height: height * 0.28, // List height according to cards
                child: ListView.builder(
                  scrollDirection:
                      Axis.horizontal, // Direct Left to Right Scroll
                  physics: const BouncingScrollPhysics(),
                  padding: const EdgeInsets.only(left: 20),
                  itemCount: propertycard1.length,
                  itemBuilder: (context, index) {
                    return PropertiesCards(propertyCards: propertycard1[index]);
                  },
                ),
              ),
            ),

            SliverToBoxAdapter(child: SizedBox(height: height * 0.03)),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Row(
                  crossAxisAlignment: .center,
                  mainAxisAlignment: .spaceBetween,
                  children: [
                    Text(
                      'Explore Near by',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: .bold,
                      ),
                    ),
                    Text(
                      'View All',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.blue,
                        fontWeight: .bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(left: 17, top: 10),
                child: GridView.builder(
                  shrinkWrap: true,
                  physics: const BouncingScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 10,
                    childAspectRatio: 0.95,
                  ),
                  itemCount: propertycard1.length,
                  itemBuilder: (context, index) {
                    return PropertiesCards(propertyCards: propertycard1[index]);
                  },
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: SafeArea(top: false,child: ButtomBar(),)
      
    );
  }
}
