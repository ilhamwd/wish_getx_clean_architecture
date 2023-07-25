enum Environments { production, qas, dev, local }

class EnvironmentConfigs {
  final Environments environment;
  final String baseUrl;

  EnvironmentConfigs(this.environment, this.baseUrl);
}

class ConfigEnvironments {
  static const _currentEnvironments = Environments.local;
  static final List<EnvironmentConfigs> _availableEnvironments = [
    EnvironmentConfigs(Environments.local, "http://localhost/api"),
    EnvironmentConfigs(Environments.dev, "http://localhost/api"),
    EnvironmentConfigs(Environments.qas, "http://localhost/api"),
    EnvironmentConfigs(
        Environments.production, "https://api.wishforhealth.id/"),
  ];

  static EnvironmentConfigs getEnvironments() {
    return _availableEnvironments.firstWhere(
      (d) => d.environment == _currentEnvironments,
    );
  }
}
