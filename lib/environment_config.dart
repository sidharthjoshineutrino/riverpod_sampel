class EnvironmentConfig{
  static
  const BASE_URL = String.fromEnvironment('BASE_URL',
      defaultValue: "https://5305-103-59-74-92.in.ngrok.io/api/");
}