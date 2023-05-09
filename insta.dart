import 'package:flutter/material.dart';

import '../Screens/model.dart';

void main() => runApp(const Instagram());

class Instagram extends StatelessWidget {
  const Instagram({super.key});

  @override
  Widget build(BuildContext context) {

    return DefaultTabController(
        length: 3,
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled)
          {
            return [
               SliverAppBar(
                 snap: false,
                 pinned: true,
                 floating: true,
                 expandedHeight: 600,
                 flexibleSpace: Column(
                   children: [
                     Container(
                       color: Colors.white,
                       height: 100,
                       width: 500,
                       child:Row(
                         children: const [
                           Padding(
                             padding: EdgeInsets.only(left: 20),
                             child: Icon(Icons.arrow_back,color:Colors.black,),
                           ), //Arrow
                           Padding(
                             padding: EdgeInsets.only(left: 20),
                             child: Text('tnpsc_job_alerts',style: TextStyle(color: Colors.black),),
                           ),  //Text
                           Padding(
                             padding: EdgeInsets.only(left: 240),
                             child: Icon(Icons.notifications,color:Colors.black,),
                           ),  //Icon
                           Padding(
                             padding: EdgeInsets.only(left: 10),
                             child: Icon(Icons.more_vert,color:Colors.black,),
                           ),   // Icon
                         ],
                       ),
                     ),  //containet I
                     Container(
                     width: 600,
                       height: 150,
                       color: Colors.white,
                       child: Row(
                         children: [
                           Padding(
                             padding: const EdgeInsets.only(left: 20),
                             child: Container(
                                 width: 100,
                                 height: 100,
                                 color: Colors.white,
                                 child: const CircleAvatar(
                                   backgroundImage: AssetImage('asset/tnpsc2.jpg'),
                                   radius: 10,
                                 ),),
                           ),// container I- 1
                           Padding(
                             padding: const EdgeInsets.only(left: 15),                             child: Container(
                               width: 100,
                               height: 70,
                               color: Colors.white,
                               child: Column(
                                 children: const [
                                   Text('788',style: TextStyle(color: Colors.black,fontSize: 20),),
                                   Text('Post',style: TextStyle(color: Colors.black,fontSize: 20),),

                                 ],
                               ),
                             ),
                           ),// container 2
                           Padding(
                             padding: const EdgeInsets.only(left: 15),
                             child: Container(
                               width: 100,
                               height: 70,
                               color: Colors.white,
                               child: Column(
                                 children: const [
                                   Text('122K',style: TextStyle(color: Colors.black,fontSize: 20),),
                                   Text('Followers',style: TextStyle(color: Colors.black,fontSize: 20),),

                                 ],
                               ),
                             ),
                           ),// container 3
                           Padding(
                             padding: const EdgeInsets.only(left: 15),
                             child: Container(
                               width: 100,
                               height: 70,
                               color: Colors.white,
                               child: Column(
                                 children: const [
                                   Text('50',style: TextStyle(color: Colors.black,fontSize: 20),),
                                   Text('Following',style: TextStyle(color: Colors.black,fontSize: 20),),
                                 ],
                               ),
                             ),
                           ),// container 4
                         ],
                       ),
                     ),  //containe II
                     Container(
                       color: Colors.white,
                       height: 258,
                       width : double.infinity,
                       child: Padding(
                         padding: const EdgeInsets.only(left: 20),
                         child: Column(
                           mainAxisAlignment: MainAxisAlignment.start,
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             const Text('Tnpsc Jobs',style: TextStyle(color: Colors.black),),
                             const Text('Education',style: TextStyle(color: Colors.black),),
                             const Text('TNPSC JOB ALERT',style: TextStyle(color: Colors.black),),
                             const Text('TNPSC',style: TextStyle(color: Colors.black),),
                             Row(
                               children: [
                                 Padding(
                                   padding: const EdgeInsets.only(right: 20,top: 10,bottom: 10),
                                   child: Container(
                                     width: 170,
                                     height: 50,
                                     color: Colors.grey.shade100,
                                     child: OutlinedButton(

                                     onPressed: () { },
                                     child: const Text('Following   ▼',style: TextStyle(color: Colors.black),),
                                      ),
                                   ),
                                 ),  //outline button 1
                                 Padding(
                                   padding: const EdgeInsets.only(right: 20,top: 10,bottom: 10),
                                   child: Container(
                                     width: 180,
                                     height: 50,
                                     color: Colors.grey.shade100,
                                     child: OutlinedButton(
                                       onPressed: () { },
                                       child: const Text('Message',style: TextStyle(color: Colors.black),),
                                     ),
                                   ),
                                 ),  // outline button 2
                                 Padding(
                                   padding: const EdgeInsets.only(right: 20,top: 10,bottom: 10),
                                   child: Container(
                                     width: 50,
                                     height: 50,
                                     color: Colors.grey.shade100,
                                     child: OutlinedButton(
                                       onPressed: () { },
                                         child: const Icon(Icons.person_add,color: Colors.black,)
                                     ),
                                   ),
                                 ),
                                 //outline button 3
                               ],
                             ),
                             Padding(
                               padding: const EdgeInsets.all(5.0),
                               child: Container(
                                 width: 450,
                                 height: 100,
                                 color: Colors.white,
                                   child: ListView.builder(
                                       scrollDirection: Axis.horizontal,
                                       itemCount: ddd.length,
                                       itemBuilder: (BuildContext context,index)
                                       {
                                         return Container(
                                           height: 100,
                                           width: 80,
                                           color: Colors.white,
                                           child: Column(
                                             children:  [
                                               SizedBox(
                                                   height: 80,
                                                   child: CircleAvatar(
                                                     backgroundImage: AssetImage(ddd[index].image),
                                                     radius: 30,
                                                   ),
                                                  // Image(image: AssetImage(ddd[index].image),)
                                               ),
                                               const Padding(
                                                 padding: EdgeInsets.all(8.0),

                                               ),
                                             ],
                                           ),
                                         );
                                       }
                                   )
                               ),
                             ), // status
                           ],
                         ),
                       ), // text container II
                     ), // container III
                   ],
                 ),
                 bottom: const TabBar(
                   tabs:
                   [
                     Tab(
                       icon: Icon(Icons.grid_on_outlined,color: Colors.black,),
                     ),
                     Tab(
                       icon: Icon(Icons.video_library, color: Colors.black,),
                     ),
                     Tab(
                       icon: Icon(Icons.account_box,color: Colors.black,),
                     ),
                   ],
                 ), // Tab I
               ),
           ] ;
          },
          body:  TabBarView(children: [
            Container(
              width: 100,
              height: 100,
              color: Colors.white,
              child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 5,
                    crossAxisSpacing: 5,
                    mainAxisSpacing: 5,
                    // maxCrossAxisExtent: 200,
                    childAspectRatio: 1.8/ 2,
                    //  crossAxisSpacing: 20,
                    // mainAxisSpacing: 20
                  ),
                  itemCount: ddd.length,
                  itemBuilder: (BuildContext ctx, index) {
                    return Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: Column(
                        children: [
                          Container(
                            height: 80,
                            width: 80,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                image:  DecorationImage(image: AssetImage(ddd[index].image),)
                              // fit: BoxFit.fill,
                            ),
                            // borderRadius: BorderRadius.circular(10)),
                          ),
                        ],
                      ),
                    );
                  }),
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.white,
              child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 5,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    // maxCrossAxisExtent: 200,
                    childAspectRatio: 1.7/ 2,
                    //  crossAxisSpacing: 20,
                    // mainAxisSpacing: 20
                  ),
                  itemCount: ddd.length,
                  itemBuilder: (BuildContext ctx, index) {
                    return Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: Column(
                        children: [
                          Container(
                            height: 80,
                            width: 80,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                image:  DecorationImage(image: AssetImage(ddd[index].image),)
                              // fit: BoxFit.fill,
                            ),
                            // borderRadius: BorderRadius.circular(10)),
                          ),
                        ],
                      ),
                    );
                  }),
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.white,
              child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 5,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    // maxCrossAxisExtent: 200,
                    childAspectRatio: 1.7/ 2,
                    //  crossAxisSpacing: 20,
                    // mainAxisSpacing: 20
                  ),
                  itemCount: ddd.length,
                  itemBuilder: (BuildContext ctx, index) {
                    return Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: Column(
                        children: [
                          Container(
                            height: 80,
                            width: 80,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                image:  DecorationImage(image: AssetImage(ddd[index].image),)
                              // fit: BoxFit.fill,
                            ),
                            // borderRadius: BorderRadius.circular(10)),
                          ),
                        ],
                      ),
                    );
                  }),
            ),
          ]),
        ),
    );
  }
}
