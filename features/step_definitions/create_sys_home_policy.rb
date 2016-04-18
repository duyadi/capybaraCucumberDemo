#GotoPage
When(/^open online policy page$/) do
  visit('https://insurance.sys.aami.com.au/home/pub/')
end

When(/^choose Home&Contents classic insurance$/) do
  find('#classic').click
end



