import 'package:dart_frog/dart_frog.dart';

Response onRequest(RequestContext context) {
  return Response.json(
    body: {
      'title': 'error',
      'body': 'this is a route testing status code 400 and json body',
    },
    statusCode: 400,
  );
}
