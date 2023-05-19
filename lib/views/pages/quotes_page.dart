import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:supabase_app/views/themes/typography.dart';
import 'package:supabase_app/views/widgets/icon_solid_light.dart';
import 'package:supabase_app/views/widgets/quote_card.dart';

import '../themes/typography.dart';
import '../widgets/icon_solid_light.dart';
import '../widgets/quote_card.dart';

class QuotesPage extends ConsumerWidget {
  const QuotesPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar.large(
            centerTitle: false,
            backgroundColor: Colors.white,
            actions: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: IconSolidLight(
                  icon: PhosphorIcons.regular.magnifyingGlass,
                ),
              ),
            ],
            title: Text("Quotes", style: MyTypography.h2),
            expandedHeight: 116,
            elevation: 0,
            floating: true,
            pinned: false,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: false,
              expandedTitleScale: 1.0,
              titlePadding: const EdgeInsets.symmetric(
                horizontal: 40,
                vertical: 16,
              ),
              title: Text(
                "Quotes",
                style: MyTypography.h2,
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return Padding(
                  padding: EdgeInsets.only(
                    right: 16,
                    left: 16,
                    bottom: 16,
                    top: index == 0 ? 100 : 0,
                  ),
                  child: const QuotesCard(
                    content:
                        "The best way to get started is to quit talking and begin doing. The best way to get started is to quit talking and begin doing. The best way to get started is to quit talking and begin doing.",
                    author: "author",
                    authorAvatar: "assets/img_avatar.png",
                    authorJob: "authorJob",
                  ),
                );
              },
              childCount: 10,
            ),
          ),
        ],
      ),
    );
  }
}
