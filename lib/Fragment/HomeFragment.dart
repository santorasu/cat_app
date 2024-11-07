import 'package:flutter/material.dart';

class HomeFragment extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    var MyItems=[
      {"img":"https://static.vecteezy.com/system/resources/thumbnails/002/098/203/small_2x/silver-tabby-cat-sitting-on-green-background-free-photo.jpg","title":"Meow Meow 1"},
      {"img":"https://bdvets.com/assets/uploads/media-uploader/10-fascinating-facts-about-cats-11695535873.jpg","title":"Meow Meow 2"},
      {"img":"https://www.shutterstock.com/image-photo/small-kitten-on-green-lawn-600nw-2322506225.jpg","title":"Meow Meow 3"},
      {"img":"https://images.pexels.com/photos/45201/kitty-cat-kitten-pet-45201.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500","title":"Meow Meow 4"},

      {"img":"https://static.vecteezy.com/system/resources/thumbnails/002/098/203/small_2x/silver-tabby-cat-sitting-on-green-background-free-photo.jpg","title":"Meow Meow 1"},
      {"img":"https://bdvets.com/assets/uploads/media-uploader/10-fascinating-facts-about-cats-11695535873.jpg","title":"Meow Meow 2"},
      {"img":"https://www.shutterstock.com/image-photo/small-kitten-on-green-lawn-600nw-2322506225.jpg","title":"Meow Meow 3"},
      {"img":"https://images.pexels.com/photos/45201/kitty-cat-kitten-pet-45201.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500","title":"Meow Meow 4"},

      {"img":"https://static.vecteezy.com/system/resources/thumbnails/002/098/203/small_2x/silver-tabby-cat-sitting-on-green-background-free-photo.jpg","title":"Meow Meow 1"},
      {"img":"https://bdvets.com/assets/uploads/media-uploader/10-fascinating-facts-about-cats-11695535873.jpg","title":"Meow Meow 2"},
      {"img":"https://www.shutterstock.com/image-photo/small-kitten-on-green-lawn-600nw-2322506225.jpg","title":"Meow Meow 3"},
      {"img":"https://images.pexels.com/photos/45201/kitty-cat-kitten-pet-45201.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500","title":"Meow Meow 4"},

      {"img":"https://static.vecteezy.com/system/resources/thumbnails/002/098/203/small_2x/silver-tabby-cat-sitting-on-green-background-free-photo.jpg","title":"Meow Meow 1"},
      {"img":"https://bdvets.com/assets/uploads/media-uploader/10-fascinating-facts-about-cats-11695535873.jpg","title":"Meow Meow 2"},
      {"img":"https://www.shutterstock.com/image-photo/small-kitten-on-green-lawn-600nw-2322506225.jpg","title":"Meow Meow 3"},
      {"img":"https://images.pexels.com/photos/45201/kitty-cat-kitten-pet-45201.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500","title":"Meow Meow 4"},

    ];

    mySnackBar(context,msg){
      return ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(msg)));
    }

    return Scaffold(
      // appBar: AppBar(
      //   title: Text("Home Data"),
      // ),
      // for GridView Example
       body: GridView.builder(
         gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
           crossAxisCount: 2,
           crossAxisSpacing: 0,
           childAspectRatio: 1.2,
         ),
         itemCount: MyItems.length,
         itemBuilder: (context,index){
           return GestureDetector(
             onTap: (){mySnackBar(context, MyItems[index]["title"]);},
             child: Container(
               margin: const EdgeInsets.all(10),
               width: double.infinity,
               height: 600,
               child: Image.network(MyItems[index]["img"]!, fit: BoxFit.fill),
             ),
           );
         },
       )
    );
  }
}