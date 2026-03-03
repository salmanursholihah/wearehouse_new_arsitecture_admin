import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.only(bottom: 90),
      children: [
        const _PageHeader(
          title: 'Chat',
          subtitle: 'Diskusi internal & support',
          actionIcon: Icons.edit_rounded,
        ),
        const _SearchBar(hint: 'Cari percakapan...'),
        const SizedBox(height: 14),

        ...List.generate(10, (i) {
          final unread = i % 4 == 0;

          return _CardTile(
            icon: Icons.person_rounded,
            title: 'Admin Gudang',
            subtitle: unread
                ? 'Ada pesan baru • 2 menit lalu'
                : 'Terakhir dibaca • kemarin',
            trailing: unread
                ? Container(
                    width: 10,
                    height: 10,
                    decoration: BoxDecoration(
                      color: const Color(0xFF2F6BFF),
                      borderRadius: BorderRadius.circular(999),
                    ),
                  )
                : const Icon(Icons.chevron_right_rounded,
                    color: Color(0xFF7B8191)),
            onTap: () {},
          );
        }),
      ],
    );
  }
}

class _PageHeader extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData? actionIcon;
  final VoidCallback? onAction;

  const _PageHeader({
    required this.title,
    required this.subtitle,
    this.actionIcon,
    this.onAction,
  });

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;

    return Container(
      padding: const EdgeInsets.fromLTRB(18, 16, 18, 16),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            cs.primary.withOpacity(0.95),
            cs.primaryContainer.withOpacity(0.95),
          ],
        ),
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(22),
          bottomRight: Radius.circular(22),
        ),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  subtitle,
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.9),
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
          if (actionIcon != null)
            InkWell(
              onTap: onAction,
              borderRadius: BorderRadius.circular(14),
              child: Container(
                height: 42,
                width: 42,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.18),
                  borderRadius: BorderRadius.circular(14),
                  border: Border.all(color: Colors.white.withOpacity(0.25)),
                ),
                child: Icon(actionIcon, color: Colors.white),
              ),
            ),
        ],
      ),
    );
  }
}

class _SearchBar extends StatelessWidget {
  final String hint;
  final VoidCallback? onTap;

  const _SearchBar({required this.hint, this.onTap});

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.fromLTRB(18, 14, 18, 0),
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(14),
          border: Border.all(color: const Color(0xFFEDEEF3)),
        ),
        child: Row(
          children: [
            Icon(Icons.search_rounded, color: cs.primary),
            const SizedBox(width: 10),
            Expanded(
              child: Text(
                hint,
                style: const TextStyle(
                  color: Color(0xFF7B8191),
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            const Icon(Icons.tune_rounded, color: Color(0xFF7B8191)),
          ],
        ),
      ),
    );
  }
}

class _CardTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final Widget? trailing;
  final VoidCallback? onTap;

  const _CardTile({
    required this.icon,
    required this.title,
    required this.subtitle,
    this.trailing,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;

    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(16),
      child: Container(
        margin: const EdgeInsets.fromLTRB(18, 0, 18, 10),
        padding: const EdgeInsets.all(14),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: const Color(0xFFEDEEF3)),
        ),
        child: Row(
          children: [
            Container(
              height: 44,
              width: 44,
              decoration: BoxDecoration(
                color: cs.primary.withOpacity(0.10),
                borderRadius: BorderRadius.circular(14),
              ),
              child: Icon(icon, color: cs.primary),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title, style: const TextStyle(fontWeight: FontWeight.w900)),
                  const SizedBox(height: 4),
                  Text(
                    subtitle,
                    style: const TextStyle(
                      fontSize: 12,
                      color: Color(0xFF7B8191),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
            trailing ??
                const Icon(Icons.chevron_right_rounded, color: Color(0xFF7B8191)),
          ],
        ),
      ),
    );
  }
}
