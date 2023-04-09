Future<String> createUserName() async {
  var name = await fetchUserName();
  return 'Your user_name is: $name';
}

Future<String> fetchUserName() => Future.delayed(
      const Duration(seconds: 2),
      () => 'Ivanka Karaim',
    );

Future<void> main() async {
  print('Fetching user name...');
  print(await createUserName());

  Future<String> f = fetchUserName();
  f.then((v)=>print(v));
}


