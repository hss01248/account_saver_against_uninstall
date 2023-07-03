flutter pub run pigeon \
--input pigeon/schema.dart \
--dart_out lib/account_saver_pigeon_generated.dart \
--objc_header_out ios/Runner/AccountSaverPigeon.h \
--objc_source_out ios/Runner/AccountSaverPigeon.m \
--objc_prefix FLT \
--java_out android/src/main/java/com/hss01248/account_saver_against_uninstall/AccountSaverPigeon.java \
--java_package "com.hss01248.account_saver_against_uninstall"
