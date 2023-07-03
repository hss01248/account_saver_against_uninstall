import 'package:pigeon/pigeon.dart';

// Flutter 调用原生代码

@HostApi()
abstract class IAccountSaver {


  @async
  void init( int dev,int test,int release, bool storeReleaseAccount);

  @async
  Map<String,Object?>  selectAccount(int hostType,  String countryCode) ;

  @async
  void saveAccount( int currentHostType, final String countryCode, String account, String pw);


}
