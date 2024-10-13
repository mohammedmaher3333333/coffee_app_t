
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/coffee_cubit/coffee_cubit.dart';
import '../../../../../core/utils/app_router.dart';
import 'custom_coffee_list_tile.dart';

class CustomCoffeeListView extends StatelessWidget {
  const CustomCoffeeListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CoffeeCubit, CoffeeState>(
      builder: (context, state) {
        var coffeeCubit = BlocProvider.of<CoffeeCubit>(context);
        return SizedBox(
          height: 226,
          child: GridView.builder(
            scrollDirection: Axis.horizontal,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1,
              childAspectRatio: 1.4,
              crossAxisSpacing: 9,
              mainAxisSpacing: 9,
            ),
            itemCount: coffeeCubit.coffeeShop.length,
            itemBuilder: (BuildContext context, int index) {
              return CustomCoffeeListTile(
                coffeeCubit: coffeeCubit,
                iconData: Icons.arrow_forward_rounded,
                index: index,
                onPressed: () {
                  GoRouter.of(context).push(
                    AppRouter.kDrinkOrderSpecifications,
                    extra: index,
                  );
                },
              );
            },
          ),
        );
      },
    );
  }
}