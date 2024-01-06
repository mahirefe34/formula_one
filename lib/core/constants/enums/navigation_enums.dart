enum NavigationEnums {
  splashView('/'),
  onBoardView('/onBoardView'),
  onBoardSubView('/onBoardSubView'),
  driversView('/driversView'),
  driverDetailView('/driverDetailView');

  final String routeName;
  const NavigationEnums(this.routeName);
}
