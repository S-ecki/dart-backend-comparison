import 'package:dart_frog/dart_frog.dart';

Handler middleware(Handler handler) {
  return handler.use(requestLogger()).use(pocHandler);
}

Handler pocHandler(Handler handler) {
  return (context) async {
    // Execute code before request is handled.
    print('Before request');

    // Forward the request to the respective handler.
    final response = await handler(context);

    // Execute code after request is handled.
    print('After request');

    // Return a response.
    return response;
  };
}
