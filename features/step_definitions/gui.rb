Given(/^open page ([^"]*)$/) do |url|
  DRIVER.get(url)
end


When(/^create screenshot$/) do
  screenshot
end

And(/^input to search line "([^"]*)"$/) do |text|
  DRIVER.find_element(:css, '.gLFyf.gsfi').send_keys(text)
end

And(/^push a keyboard "([^"]*)"$/) do |key|
  DRIVER.action.send_keys(elementVisible, :return).perform if key == 'ENTER'
end

Then(/^click button "([^"]*)"$/) do |arg|
  DRIVER.find_element(:css, '[name="btnK"]').click
end

Then(/^block searched is visible$/) do
  expect(DRIVER.find_element(:id, 'search').displayed?).to be true
end