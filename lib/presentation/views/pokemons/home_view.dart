import 'package:flutter/material.dart';
import 'package:pokedex/presentation/widgets/shared/custom_appbar.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [

        SliverAppBar(
          floating: true,
          flexibleSpace: FlexibleSpaceBar(
            title: CustomAppbar(),
          ),
        )
      ],
    );
  }
}