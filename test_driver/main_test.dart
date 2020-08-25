import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';

void main() {
  group('Ventrata App', () {
    FlutterDriver driver;

    setUpAll(() async {
      driver = await FlutterDriver.connect();
    });

    tearDownAll(() async {
      if (driver != null) {
        driver.close();
      }
    });

    group('My test', () {
      test('try regular TextField', () async {
        final expectedText = 'foo';

        await driver.tap(find.byValueKey('text_field_1'));
        await driver.enterText(expectedText);
        await driver.waitFor(find.text(expectedText));
      });

      test('try intl_phone_number_input TextField', () async {
        final expectedText = 'bar';

        await driver.tap(find.byValueKey('text_field_2'));
        await driver.enterText(expectedText);
        await driver.waitFor(find.text(expectedText));
      });
    });
  });
}
