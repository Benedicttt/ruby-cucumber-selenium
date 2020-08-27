def screenshot
  time     = Time.now.strftime('%Y-%m-%d_%H-%M-%S')
  filename = "./report_files/screen-#{time}.png"

  DRIVER.save_screenshot(filename)
  attach("data:image/png;base64,#{filename}",'image/png')

  png = DRIVER.screenshot_as(:png)
  path = "./report_files/screen-" + (0..16).to_a.map{|a| rand(16).to_s(16)}.join + '.png' # Or use some GUID library to make a unique filename - scenario names are not  guaranteed to be unique.
  File.open(path, 'wb') {|io| io.write(png)}
  embed(path, 'image/png')
end
  