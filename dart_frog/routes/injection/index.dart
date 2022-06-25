import 'package:dart_frog/dart_frog.dart';

Response onRequest(RequestContext context) {
  final injectedString = context.read<String>();
  return Response(body: injectedString);
}
