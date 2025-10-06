import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SlideInfo {
  final String title;
  final String caption;
  final String imageUrl;

  SlideInfo({
    required this.title,
    required this.caption,
    required this.imageUrl,
  });
}

final List<SlideInfo> slides = [
  SlideInfo(
    title: 'Search the food',
    caption: 'Search the food you want to eat',
    imageUrl: 'assets/images/1.png',
  ),
  SlideInfo(
    title: 'Choose the food',
    caption: 'Choose the food you want to eat',
    imageUrl: 'assets/images/2.png',
  ),
  SlideInfo(
    title: 'Eat the food',
    caption: 'Eat the food you want to eat',
    imageUrl: 'assets/images/3.png',
  ),
];

class TutorialScreen extends StatefulWidget {
  static const String name = 'TutorialScreen';
  const TutorialScreen({super.key});

  @override
  State<TutorialScreen> createState() => _TutorialScreenState();
}

class _TutorialScreenState extends State<TutorialScreen> {
  final PageController _pageController = PageController();
  bool endReached = false;

  void _onPageChanged(double? currentPage) {
    setState(() {
      endReached = currentPage == ((slides.length - 1));
    });
  }

  @override
  void initState() {
    super.initState();
    _pageController.addListener(() {
      _onPageChanged(_pageController.page);
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: MediaQuery.removePadding(
        context: context,
        removeTop: true,
        removeBottom: false,
        child: Stack(
          children: [
            PageView(
              controller: _pageController,
              physics: const BouncingScrollPhysics(),
              children: slides
                  .map(
                    (slide) => _Slide(
                      title: slide.title,
                      caption: slide.caption,
                      imageUrl: slide.imageUrl,
                    ),
                  )
                  .toList(),
            ),

            Positioned(
              top: 30,
              right: 30,
              child: TextButton(
                onPressed: () => context.go('/'),
                child: Text('Skip Page'),
              ),
            ),

            Positioned(
              bottom: 60,
              left: 30,
              right: 30,
              child: FilledButton(
                style: FilledButton.styleFrom(
                  elevation: 5,
                  // shape: const StadiumBorder(
                  //   side: BorderSide(color: Colors.white),
                  // ),
                  // backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                ),
                onPressed: () {
                  if (endReached) {
                    context.go('/');
                  } else {
                    _pageController.nextPage(
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.easeInOut,
                    );
                  }
                },
                child: endReached
                    ? FadeInRight(
                        duration: const Duration(milliseconds: 300),
                        child: const Text('Finish'),
                      )
                    : const Text('Next'),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.go('/'),
        child: const Icon(Icons.arrow_back),
      ),
    );
  }
}

class _Slide extends StatelessWidget {
  final String title;
  final String caption;
  final String imageUrl;
  const _Slide({
    required this.title,
    required this.caption,
    required this.imageUrl,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(imageUrl),
            const SizedBox(height: 30),
            Text(
              title,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Text(caption),
          ],
        ),
      ),
    );
  }
}
