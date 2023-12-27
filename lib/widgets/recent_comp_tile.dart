import 'package:flutter/material.dart';
import 'package:stocks/model/tile_model.dart';

class RecentCompTile extends StatelessWidget {
  const RecentCompTile({super.key, required this.tileModel});
  final TileModel tileModel;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 10.0),
      color: const Color.fromRGBO(255, 255, 255, 1),
      child: ListTile(
        tileColor: Colors.transparent,
        contentPadding: const EdgeInsets.symmetric(horizontal: 8.0),
        leading: Container(
          height: 50,
          width: 50,
          padding: EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            color: Colors.black12.withOpacity(0.05),
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Image.network(
            tileModel.imageUrl,
            height: 20,
            width: 20,
            fit: BoxFit.contain,
          ),
        ),
        title: Text(tileModel.title),
        subtitle: Text(
          tileModel.subtitle,
          style: const TextStyle(color: Colors.teal),
        ),
        trailing: SizedBox(
          width: 50,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                tileModel.trailingTitle,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    tileModel.trailingSubtitle,
                    style: const TextStyle(
                      color: Colors.teal,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Icon(
                    tileModel.stockIcon,
                    size: 13,
                    color: Colors.teal,
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
