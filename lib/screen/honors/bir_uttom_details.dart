import 'package:bijoy/helper/castom_appbar.dart';
import 'package:bijoy/screen/honors/bir_uttom_full_details.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:bijoy/provider/bir_uttom_provider.dart';
import 'package:flutter/material.dart';

class BirUttomDetailsPage extends StatefulWidget {
  const BirUttomDetailsPage({Key? key}) : super(key: key);

  @override
  _BirUttomDetailsPageState createState() => _BirUttomDetailsPageState();
}

class _BirUttomDetailsPageState extends State<BirUttomDetailsPage> {
  @override
  Widget build(BuildContext context) {
    Provider.of<BirUttomProvider>(context).initializeAllBirUttom();
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: CustomAppBar(titile: 'বীর উত্তম পদকপ্রাপ্তদের তালিকা')
      ),
      body: Consumer<BirUttomProvider>(
        builder: (context,birUttomProvider,child){
          return Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    itemCount: birUttomProvider.birUttomModelList.length,
                      itemBuilder: (context,index){
                        return Column(
                          children: [
                          SizedBox(
                          height: 60,
                          width: MediaQuery.of(context).size.width,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ElevatedButton(
                              child: Text(birUttomProvider.birUttomModelList[index].name,
                                style: TextStyle(
                                    fontSize: 20
                                ),
                              ),
                              style: ElevatedButton.styleFrom(
                                  primary: Colors.teal
                              ),
                              onPressed: (){
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context)=>BirUttomFullDetails(
                                        image: birUttomProvider.birUttomModelList[index].image,
                                        name: birUttomProvider.birUttomModelList[index].name,
                                        sector: birUttomProvider.birUttomModelList[index].sector,
                                        deg: birUttomProvider.birUttomModelList[index].deg,
                                        gajet: birUttomProvider.birUttomModelList[index].gajetNo)));
                              },
                            ),
                          ),
                        ),
                            // Container(
                            //   height: 120,
                            //     width: 120,
                            //     child: Image.network(birUttomProvider.birUttomModelList[index].image)),
                            // Text(birUttomProvider.birUttomModelList[index].name),
                            // Text(birUttomProvider.birUttomModelList[index].sector),
                            // Text(birUttomProvider.birUttomModelList[index].deg),
                            // Text(birUttomProvider.birUttomModelList[index].gajetNo),
                          ],
                        );
                      }),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
