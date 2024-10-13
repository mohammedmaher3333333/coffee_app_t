part of 'coffee_cubit.dart';

@immutable
sealed class CoffeeState {}

final class CoffeeInitial extends CoffeeState {}

final class CoffeeAddItem extends CoffeeState {}

final class CoffeeRemoveItem extends CoffeeState {}

final class CoffeeRemoveAllItem extends CoffeeState {}

final class CurtSelectItem extends CoffeeState {}

// count Request drinks

final class CoffeeIncrementCountDrinks extends CoffeeState {}

final class CoffeeDecrementCountDrinks extends CoffeeState {}

final class CoffeeGetCountDrinks extends CoffeeState {}

// size Request drinks
final class CoffeeChangeSelectedSize extends CoffeeState {}

// type Request drinks
final class CoffeeChangeSelectedType extends CoffeeState {}
// refresh details drinks

final class CoffeeRefreshDetailsDrink extends CoffeeState {}

// calculate total sale

final class CoffeeCalculateTotalSale extends CoffeeState {}
