import 'package:appy_hour_address/view/manage_address.dart';
import 'package:flutter/material.dart';

class AddNewAddress extends StatelessWidget {
  const AddNewAddress({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Add Address'),
      ),
      body: Center(
        child: SizedBox(
          width: 350,
          child: Column(
            children: [
              TextFormField(
                decoration: const InputDecoration(
                  labelText: "Address Name",
                  hintText: "Enter address name",
                  suffixIcon: Icon(
                    Icons.person,
                  ),
                ),
              ),
              const SizedBox(
                height: 2,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: "Address Line 1",
                  hintText: "Enter address line 1",
                  suffixIcon: Icon(
                    Icons.format_align_justify,
                  ),
                ),
              ),
              const SizedBox(
                height: 2,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: "Address Line 2",
                  hintText: "Enter address line 2",
                  suffixIcon: Icon(
                    Icons.format_align_justify,
                  ),
                ),
              ),
              const SizedBox(
                height: 2,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: "State",
                  hintText: "Enter State",
                  suffixIcon: Icon(
                    Icons.map,
                  ),
                ),
              ),
              const SizedBox(
                height: 2,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: "City",
                  hintText: "Enter City",
                  suffixIcon: Icon(
                    Icons.map_outlined,
                  ),
                ),
              ),
              const SizedBox(
                height: 2,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: "Zip",
                  hintText: "Enter Zip",
                  suffixIcon: Icon(
                    Icons.zoom_in_map,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Text("Do you want make address default ?"),
                  SizedBox(
                    width: 20,
                  ),
                  Icon(Icons.square),
                  SizedBox(
                    width: 13,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: GestureDetector(
        onTap: () {
          Navigator.pop(
            context,
            MaterialPageRoute(builder: (context) {
              return const ManageAddress();
            }),
          );
        },
        child: Container(
          width: 100,
          height: 30,
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(30),
          ),
          child: const Center(
            child: Text(
              "Save address",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
