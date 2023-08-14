import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class ProfileSetting extends StatefulWidget {
  const ProfileSetting({Key? key}) : super(key: key);

  @override
  State<ProfileSetting> createState() => _ProfileSettingState();
}

class _ProfileSettingState extends State<ProfileSetting> {
  final CollectionReference _user =
  FirebaseFirestore.instance.collection('user');

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _lastController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();

  Future<void> _update([DocumentSnapshot? documentSnapshot]) async {
    if (documentSnapshot != null) {
      _nameController.text = documentSnapshot['name'];
      _lastController.text = documentSnapshot['last'];
      _emailController.text = documentSnapshot['email'];
    }
    await showModalBottomSheet(
        context: context,
        builder: (BuildContext) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextField(
                controller: _nameController,
                decoration: const InputDecoration(labelText: 'Name'),
              ),
              TextField(
                controller: _lastController,
                decoration: const InputDecoration(labelText: 'last'),
              ),
              TextField(
                controller: _emailController,
                decoration: const InputDecoration(labelText: 'email'),
              ),
              ElevatedButton(
                onPressed: () async {
                  final String name = _nameController.text;
                  final String last = _lastController.text;
                  final String email = _emailController.text;
                  if (email != null) {
                    await _user
                        .doc(documentSnapshot!.id)
                        .update({"name": name, "last": last, "email": email});
                    _nameController.text = '';
                    _lastController.text = '';
                    _emailController.text = '';
                  }
                },
                child: const Text('update'),
              )
            ],
          );
        });
  }



  Future<void> _delete(String  productId ) async {
    await _user.doc(productId).delete();

    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('data deleted'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
        stream: _user.snapshots(),
        builder: (context, AsyncSnapshot<QuerySnapshot> streamSnapshot) {
          if (streamSnapshot.hasData) {
            return ListView.builder(
                itemCount: streamSnapshot.data!.docs.length,
                itemBuilder: (context, index) {
                  final DocumentSnapshot documentSnapshot =
                  streamSnapshot.data!.docs[index];
                  return Card(
                    margin: const EdgeInsets.all(20),
                    child: ListTile(
                        title: Text(documentSnapshot['name']),
                        subtitle: Text(documentSnapshot['email']),
                        trailing: SizedBox(
                          width: 100,
                          child: Row(
                            children: [
                              IconButton(
                                icon: const Icon(Icons.edit),
                                onPressed: () {
                                  _update(documentSnapshot);
                                },
                              ),
                              IconButton(
                                icon: const Icon(Icons.delete),
                                onPressed: () {
                                  _delete(documentSnapshot.id);
                                },
                              ),
                            ],
                          ),
                        ),
                    ),
                  );
                });
          };


          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
