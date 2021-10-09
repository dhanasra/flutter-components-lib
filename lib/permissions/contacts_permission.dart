part of spidy;

@immutable
class ContactsPermission{
  void checkServiceStatus(
      BuildContext context, PermissionWithService permission) async {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text((await permission.serviceStatus).toString()),
    ));
  }

  Future<void> request() async {
    final status = await Permission.contacts.request();
    print(status);
  }
}