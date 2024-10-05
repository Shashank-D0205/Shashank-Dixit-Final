import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;
import '../../../email/api/email_repository.dart';
import '../../../email/api/email_api.dart';
import '../../../email/bloc/email_bloc.dart';

final getIt = GetIt.instance;

void configureDependencies() {
  getIt.registerLazySingleton<EmailRepository>(() => EmailRepositoryImpl(emailApi: getIt()));
  getIt.registerLazySingleton<EmailApi>(() => EmailApiImpl(client: getIt()));
  getIt.registerLazySingleton(() => http.Client());
  getIt.registerFactory(() => EmailBloc(getIt()));


}