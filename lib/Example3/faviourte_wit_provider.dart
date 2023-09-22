import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'faviourte_provider.dart';

class FaviourteWithProvider extends StatefulWidget {
  const FaviourteWithProvider({super.key});

  @override
  State<FaviourteWithProvider> createState() => _FaviourteWithProviderState();
}

class _FaviourteWithProviderState extends State<FaviourteWithProvider> {
  //List<int> slected = [];

  @override
  Widget build(BuildContext context) {
    print('build');
    //FaviourteProvider faviourteProvider = Provider.of<FaviourteProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Faviourte Provider'),
      ),
      body: Column(
        children: [
          Expanded(child:

          ListView.builder(
      itemCount: 100,
      itemBuilder: (context,index){

            return Consumer<FaviourteProvider>(builder: (context,value,child){
              return ListTile(
                onTap: (){
                  if(value.selected.contains(index)){
                    value.remove(index);
                  }else{
                    value.add(index);
                  }
                },
                title: Text('Items ${index}'),
                trailing: value.selected.contains(index)?Icon(Icons.favorite):Icon(Icons.favorite_outline),
              );
            });
    }),
          )
        ],
      ),
    );
  }
}
