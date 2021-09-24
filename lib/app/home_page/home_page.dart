import 'package:flutter/material.dart';
import 'package:flutter_app_first/app/login_page/custom_exception.dart';
import 'package:flutter_app_first/model/cart.dart';
import 'package:flutter_app_first/model/product.dart';
import 'package:flutter_app_first/providers.dart';
import 'package:flutter_app_first/repository/product_repository.dart';
import 'package:flutter_app_first/widgets/confirm_dialog.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:icon_badge/icon_badge.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomePageState();
}

final productRepositoryProvider = FutureProvider<List<Product>>((ref) async {
  final productRepository = ProductRepository(api: ref.watch(apiProvider));
  return await productRepository.fetchProducts();
});

class _HomePageState extends ConsumerState<HomePage> {
  @override
  void initState() {
    super.initState();
    fetchCarts();
  }

  Future<void> fetchCarts() async {
    await ref.read(cartNotifierProvider.notifier).fetchCarts();
  }

  void _onSignOut() async {
    final isConfirmed = await confirmDialog(
      context,
      title: 'Logout',
      content: 'Apakah anda yakin untuk Logout?',
      actionText: 'Keluar',
      cancelText: 'Tutup',
    );

    if (isConfirmed) {
      await ref.read(authNotifierProvider.notifier).signOut();
    }
  }

  Future<void> _addToCart(Product product) async {
    try {
      const quantity = 1;
      await ref
          .read(cartNotifierProvider.notifier)
          .addToCart(product, quantity);
    } on ErrorResponseException catch (_) {}
  }

  int _countProductOnCarts(List<Cart> carts) {
    return carts.fold(0, (result, cart) => result + cart.quantity);
  }

  @override
  Widget build(BuildContext context) {
    final cartsState = ref.watch(cartNotifierProvider);
    final carts = cartsState.maybeWhen(
        currentCarts: (carts) => carts, orElse: () => <Cart>[]);

    final asyncProducts = ref.watch(productRepositoryProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
        actions: <Widget>[
          IconBadge(
            icon: const Icon(Icons.shopping_cart),
            itemCount: _countProductOnCarts(carts),
            badgeColor: Colors.red,
            itemColor: Colors.white,
            hideZero: true,
            onTap: () {
              print('test');
            },
          ),
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: _onSignOut,
          ),
        ],
      ),
      body: Center(
        child: asyncProducts.when(
          data: (data) => _buildProductsList(data),
          loading: () => const Center(
            child: CircularProgressIndicator(),
          ),
          error: (_, __) => const Center(
            child: Text('Error accured!'),
          ),
        ),
      ),
    );
  }

  Widget _buildProductsList(List<Product> products) {
    return ListView.builder(
      itemCount: products.length,
      itemBuilder: (BuildContext _context, int i) {
        if (i.isOdd) {
          return const Divider(
            color: Colors.black12,
          );
        }

        return _buildRow(products[i]);
      },
    );
  }

  Widget _buildRow(Product product) {
    return ListTile(
      title: Text(product.name),
      subtitle: Text(product.price.toString()),
      leading: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: FadeInImage.memoryNetwork(
          placeholder: kTransparentImage,
          image: product.image,
        ),
      ),
      trailing: const Icon(Icons.add_shopping_cart),
      onTap: () => _addToCart(product),
    );
  }
}
