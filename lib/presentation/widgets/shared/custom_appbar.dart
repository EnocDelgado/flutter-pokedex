import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme;
    final titleStyle = Theme.of(context).textTheme.titleMedium;

    return  SafeArea(
      bottom: false,
      child: Padding(
        padding: const EdgeInsets.symmetric( horizontal:  10 ),
        child: SizedBox(
          width: double.infinity,
          child: Row(
            children: [
              Icon( Icons.circle_notifications_outlined, color: colors.primary ),
              const SizedBox( width:  5 ),
              Text('Pokedex', style: titleStyle ),

              const Spacer(),

              IconButton(
                onPressed: (){
                  // here I hava to implement search engine
                }, 
                icon: const Icon( Icons.search )
              )
            ],
          ),
        ),
      ),
    );
  }
}