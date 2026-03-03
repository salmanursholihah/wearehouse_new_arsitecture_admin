import 'package:flutter/material.dart';
import 'package:wearehouse_new_arsitecture_admin/presentation/pages/chat_page.dart';
import 'package:wearehouse_new_arsitecture_admin/presentation/pages/dashboard_page.dart';
import 'package:wearehouse_new_arsitecture_admin/presentation/pages/inventory_page.dart';
import 'package:wearehouse_new_arsitecture_admin/presentation/pages/request_page.dart';
import 'package:wearehouse_new_arsitecture_admin/presentation/pages/settings_page.dart';

class MainNavPage extends StatefulWidget {
  const MainNavPage({super.key});

  @override
  State<MainNavPage> createState() => _MainNavPageState();
}

class _MainNavPageState extends State<MainNavPage> {
  int _index = 0;

  final _pages = const [
    DashboardPage(),
    InventoryPage(),
    RequestsPage(),
    ChatPage(),
    SettingsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;

    return Scaffold(
      body: IndexedStack(index: _index, children: _pages),
      bottomNavigationBar: Container(
        margin: const EdgeInsets.fromLTRB(14, 0, 14, 14),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(18),
          border: Border.all(color: const Color(0xFFEDEEF3)),
          boxShadow: [
            BoxShadow(
              blurRadius: 18,
              offset: const Offset(0, 10),
              color: Colors.black.withOpacity(0.08),
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(18),
          child: BottomNavigationBar(
            currentIndex: _index,
            onTap: (v) => setState(() => _index = v),
            type: BottomNavigationBarType.fixed,
            elevation: 0,
            backgroundColor: Colors.white,
            selectedItemColor: cs.primary,
            unselectedItemColor: const Color(0xFF7B8191),
            selectedLabelStyle: const TextStyle(fontWeight: FontWeight.w800),
            unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.w700),
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.dashboard_rounded),
                label: 'Dashboard',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.inventory_2_rounded),
                label: 'Inventory',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.assignment_rounded),
                label: 'Requests',
              ),
              BottomNavigationBarItem(
                icon: _ChatIconWithBadge(),
                label: 'Chat',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings_rounded),
                label: 'Settings',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/// icon chat dengan badge (dummy unread)
class _ChatIconWithBadge extends StatelessWidget {
  const _ChatIconWithBadge();

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        const Icon(Icons.chat_bubble_rounded),
        Positioned(
          right: -4,
          top: -3,
          child: Container(
            width: 10,
            height: 10,
            decoration: BoxDecoration(
              color: const Color(0xFFF04438),
              borderRadius: BorderRadius.circular(999),
              border: Border.all(color: Colors.white, width: 2),
            ),
          ),
        ),
      ],
    );
  }
}
