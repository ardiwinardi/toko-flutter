class APIPath {
  final String _host = 'http://localhost:3200';

  Uri get signIn => Uri.parse('$_host/auth/signin');
  Uri get getMe => Uri.parse('$_host/auth/me');
  Uri get products => Uri.parse('$_host/products');
  Uri get carts => Uri.parse('$_host/carts');
}
