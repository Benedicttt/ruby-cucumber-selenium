Before '@GUI' do |scenario|
  DRIVER = !ENV['REMOTE_HUB'].nil? ? set_remote_driver(scenario.name) : set_local_driver
  DRIVER.manage.window.size = Selenium::WebDriver::Dimension.new(1920, 1200)
end

After '@GUI' do
    screenshot
    DRIVER.quit
  rescue
    FRIVER.close
end
