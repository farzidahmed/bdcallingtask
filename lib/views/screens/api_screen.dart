import 'dart:convert';

import 'package:flutter/material.dart';

import '../../api_model/fatchData.dart';
import 'package:http/http.dart'as http;

class ApiScreen extends StatefulWidget {
  const ApiScreen({super.key});


  @override
  State<ApiScreen> createState() => _ApiScreenState();
}

class _ApiScreenState extends State<ApiScreen> {

  final List<FacthData> facthdata=[];
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: GetData(),
      builder: (context,snapshot ) {
        if(snapshot.hasData){
          return ListView.builder(
              itemCount: facthdata.length,
              itemBuilder: (context,index){
                return Container(
                  height: 120,
                  color: Colors.grey,
                  margin: EdgeInsets.all(10),
                  child:  Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('user id:${facthdata[index].userId}',style: const TextStyle(fontSize: 16,color: Colors.black45),),
                      SizedBox(height: 4,),
                      Text('Id:${facthdata[index].id}',style: const TextStyle(fontSize: 16,color: Colors.black45),),
                      SizedBox(height: 4,),
                      Text('Title:${facthdata[index].title}',style: const TextStyle(fontSize: 16,color: Colors.black45),maxLines: 1,),
                      SizedBox(height: 4,),
                      Text('Body:${facthdata[index].body}',style: const TextStyle(fontSize: 16,color: Colors.black45),maxLines: 1,),
                    ],
                  ),
                );
              });
        } else{
          return const Center(child: CircularProgressIndicator(),);
        }
      }

      );

  }
  Future<List<FacthData>?> GetData()async{
    final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));

    var uri = jsonDecode(response.body.toString());
    if(response.statusCode==200){
      for(Map <String, dynamic>  index in uri){
        facthdata.add(FacthData.fromJson(index));
      }
      return facthdata;
    }else{
      return facthdata;
    }
  }

}
