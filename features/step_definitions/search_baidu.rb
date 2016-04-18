Given(/^I open baidu$/) do
  # visit 'https://www.baidu.com/'
  @homepage = Baidu.new
  @homepage.load
end

When(/^I input "([^"]*)" in baidu$/) do |nanshen|
  # find(:xpath,'//*[@id="kw"]').set(nanshen)
  @homepage.search_text.set (nanshen)
end

And(/^I click button$/) do
  # click_button('百度一下')
  @homepage.search_button.click
end

Then(/^I can see the information about Jay Chou$/) do
  # expect(page).to have_content('周杰伦')
  expect(@homepage).to have_text('周杰伦')
  @homepage.result
end

