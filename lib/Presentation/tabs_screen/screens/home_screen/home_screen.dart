import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 200.0,
            floating: false,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                children: [
                  // This is your main background content (image, color, etc.)
                  Image.asset(
                    'assets/OnboardingImage/onboardingImage3.png',
                    fit: BoxFit.cover,
                    width: double
                        .infinity, 
                  ),
                  const SafeArea(
                    child: Align(
                    
                      child: Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Row(
                          mainAxisAlignment:  MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              child: Column(
                                children: [
                                  Text(
                                    "Your Location ▾",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 22,
                                    ),
                                  ),
                                  Text(
                                    "📍 New York",
                                    style: TextStyle(color: Colors.white, fontSize: 22,),
                                  ),
                                ],
                              ),
                            ),
                            Align(
                             alignment: Alignment.topRight,                              
                             child: Row(
                               children: [
                                 Text("data1",style: TextStyle(color: Colors.white,fontSize: 24),),
                                 Text("data2",style: TextStyle(color: Colors.white,fontSize: 24),),
                               ],
                             ))
                          ],
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0), // Optional padding
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width *
                            0.6, // 40% of screen width
                        child: const Text(
                          "Provide the best food for you",
                          style: TextStyle(color: Colors.white, fontSize: 28,),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return ListTile(
                  title: Text("Item #$index"),
                );
              },
              childCount: 25,
            ),
          ),
        ],
      ),
    );
  }
}
