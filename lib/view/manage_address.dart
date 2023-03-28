import 'package:appy_hour_address/view/add_new_address.dart';
import 'package:appy_hour_address/view_model/auth_view_model.dart';
import 'package:flutter/material.dart';

class ManageAddress extends StatefulWidget {
  const ManageAddress({super.key});

  @override
  State<ManageAddress> createState() => _ManageAddressState();
}

class _ManageAddressState extends State<ManageAddress> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    AuthViewModel model = AuthViewModel.of(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Manage address'),
        actions: [
          IconButton(
            onPressed: () {
              model.logout();
            },
            icon: const Icon(Icons.logout),
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text("aysfdgj"),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) {
              return const AddNewAddress();
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
              "Add address",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
