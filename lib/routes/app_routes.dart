enum AppRoutes {
  initial('/'),
  themePreference('/theme-preference'),
  welcome('/welcome'),
  login('/login'),
  register('/register'),
  ;

  final String path;
  const AppRoutes(this.path);
}
