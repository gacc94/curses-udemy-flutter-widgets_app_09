import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class InfiniteScrollScreen extends StatefulWidget {
  static const String name = 'InfiniteScrollScreen';
  const InfiniteScrollScreen({super.key});

  @override
  State<InfiniteScrollScreen> createState() => _InfiniteScrollScreenState();
}

class _InfiniteScrollScreenState extends State<InfiniteScrollScreen> {
  final ScrollController _scrollController = ScrollController();
  final List<int> images = List.generate(100, (index) => index);
  bool isLoading = false;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    if (_scrollController.position.pixels >=
        _scrollController.position.maxScrollExtent) {
      setState(() {
        isLoading = true;
      });
      Future.delayed(const Duration(seconds: 2), () {
        setState(() {
          images.add(images.length);
          isLoading = false;
        });
      });
    }
  }

  Future<void> _onRefresh() async {
    await Future.delayed(const Duration(milliseconds: 300));
    setState(() {
      images.clear();
      images.add(images.length);
    });
  }

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).primaryColor;
    return Scaffold(
      // appBar: AppBar(title: const Text('Infinite Scroll')),
      body: MediaQuery.removeViewPadding(
        context: context,
        removeTop: true,
        removeBottom: true,
        child: RefreshIndicator(
          onRefresh: () => _onRefresh(),
          child: ListView.builder(
            controller: _scrollController,
            itemCount: images.length,
            itemBuilder: (context, index) {
              return FadeInImage(
                placeholder: const AssetImage('assets/images/jar-loading.gif'),
                image: NetworkImage(
                  'https://picsum.photos/500/400?random=${images[index]}',
                ),
              );
            },
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: color,
        foregroundColor: Colors.white,
        onPressed: () => context.go('/'),
        child: SpinPerfect(infinite: true, child: Icon(Icons.refresh)),
      ),
    );
  }
}

// const Icon(Icons.arrow_back),
