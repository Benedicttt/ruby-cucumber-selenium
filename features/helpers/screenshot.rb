def screenshot
  time     = Time.now.strftime('%Y-%m-%d_%H-%M-%S')
  filename = "./report_files/screen-#{time}.png"

  DRIVER.save_screenshot(filename)
  attach(filename, 'image/png')
end
  