class UserModel {
  String user_ID = ''; // <-- Add a default value to the user_ID parameter
  String user_name;
  String Email;
  String telefono;
  String password;

  UserModel (this.user_ID, this.user_name, this.Email, this.telefono, this.password);

  Map<String, dynamic> toMap() {
  var Map = <String, dynamic>{
    'user_ID': user_ID,
    'user_name': user_name,
    'Email': Email,
    'telefono': telefono,
    'password': password
    };
  return Map;
}
  UserModel.fromMap(Map<String, dynamic> map) {
  user_ID = map['user_ID']; 
  user_name = map['user_name'];
  Email = map['Email'];
  telefono = map['telefono'];
  password = map['password'];
  }
}