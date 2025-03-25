enum Flavor { dev, prod }

class F {
  static Flavor? appFlavor;

  static String get name => appFlavor?.name ?? '';

  static String get title {
    switch (appFlavor) {
      case Flavor.dev:
        return '와꾸의 민족 dev';
      case Flavor.prod:
        return '와꾸의 민족';
      default:
        return '';
    }
  }
}
