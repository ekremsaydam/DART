class CustomerManager implements ICustomerManager {
  @override
  void Save(ILogger logger) {
    print("Müşteri Kaydedildi");
    // EmailLogger emailLogger = new EmailLogger();
    // emailLogger.Log("Log datası");
    logger.Log("[Log datası]");
  }
}

class ICustomerManager {
  void Save(ILogger logger) {}
}

class ILogger {
  void Log(String message) {}
}

class EmailLogger implements ILogger {
  @override
  void Log(String message) {
    print("Log to email " + message);
  }
}

class DatabaseLogger implements ILogger {
  @override
  void Log(String message) {
    print("Log to Database " + message);
  }
}

class FileLogger implements ILogger {
  @override
  void Log(String message) {
    print("Logged to file " + message);
  }
}

void main() {
  CustomerManager customerManager = new CustomerManager();
  customerManager.Save(new FileLogger());
}
