enum AppRoutes {
  initial('/'),
  themePreference('/theme-preference'),
  welcome('/welcome'),
  ;

  final String path;
  const AppRoutes(this.path);
}
