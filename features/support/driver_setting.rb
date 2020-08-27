def for_chrome
  condition = !ENV['HEADLESS'].nil? ? ENV['HEADLESS'] : "empty_args_headless"
  %w[disable-gpu no-sandbox] << condition
end

def options_chrome
  Selenium::WebDriver::Chrome::Options.new(args: for_chrome)
end

def set_remote_driver(scenario)
  attribute = {
      browserName: 'chrome', enableVNC: true, chromeOptions: { args: for_chrome },
      name: "TESTING/#{ENV.fetch('ENV', 'LOCAL')}: #{scenario}"
  }

  caps      = Selenium::WebDriver::Remote::Capabilities.chrome(attribute)

  Selenium::WebDriver.for(:remote, url: "http://#{ENV['REMOTE_HUB']}/wd/hub", desired_capabilities: caps)
end

def set_local_driver
  Selenium::WebDriver.for :chrome, options: options_chrome
end
