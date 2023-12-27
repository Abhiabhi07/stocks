import 'package:flutter/material.dart';
import 'package:stocks/model/tile_model.dart';
import 'package:stocks/widgets/recent_comp_tile.dart';

class RecentActivityList extends StatelessWidget {
  const RecentActivityList({super.key, this.scrollController});
  final ScrollController? scrollController;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Recent Activity'),
              Text(
                'See All',
                style: TextStyle(color: Colors.orange),
              )
            ],
          ),
        ),
        ListView.builder(
            controller: scrollController,
            physics: const BouncingScrollPhysics(),
            shrinkWrap: true,
            itemCount: TileModel.tiles.length,
            itemBuilder: (context, index) {
              return RecentCompTile(
                tileModel: TileModel.tiles[index],
              );
            }),
      ],
    );
  }
}
