import 'package:e_drishti/place.dart';
import 'package:e_drishti/place_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class PlaceStaggeredGridView extends StatelessWidget {
  final placeList = Place.generatePlaces();
  // const PlaceStaggeredFridView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: GestureDetector(
        child: StaggeredGridView.countBuilder(
          shrinkWrap: true,
            physics: ScrollPhysics(),
            crossAxisSpacing: 15,
            mainAxisSpacing: 15,
            crossAxisCount: 4,
            itemCount: placeList.length,
            itemBuilder: (context, index)=> PlaceItem(place: placeList[index]),
            staggeredTileBuilder: (_)=>StaggeredTile.fit(2),

        ),
        onTap: onClick,
      ),
    );
  }
}

void onClick(){

}
