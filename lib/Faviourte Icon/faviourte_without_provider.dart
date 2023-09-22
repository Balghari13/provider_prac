import 'package:flutter/material.dart';


class FaviourtePage extends StatefulWidget {
  const FaviourtePage({super.key});

  @override
  State<FaviourtePage> createState() => _FaviourtePageState();
}

class _FaviourtePageState extends State<FaviourtePage> {
  List<int> selectedFav = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Faviourte to List'),
      ),
      body: Column(
        children: [
Expanded(
  child:   ListView.builder(
    itemCount: 100,
      itemBuilder: (context,index){
  
    return ListTile(
      onTap: (){
        selectedFav.add(index);
        setState(() {

        });
      },
      leading: Text('Item ${index.toString()}'),
      trailing: Icon(selectedFav.contains(index)?Icons.favorite:Icons.favorite_border_outlined),

  
    );
  
  }),
)
        ],
      ),
    );
  }
}
