enum AppRoutes {
  initial('/'),
  themePreference('/theme-preference'),
  welcome('/welcome'),
  login('/login'),
  register('/register'),
  dashboard('/dashboard'),
  ;

  final String path;
  const AppRoutes(this.path);
}
