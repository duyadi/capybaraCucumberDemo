#GotoPage
When(/^open suncorp official page$/) do
  visit 'http://www.suncorp.com.au/'
end

When(/^choose suncorp insurance link$/) do
  click_on('Go to Suncorp Insurance')
end

When(/^choose Home&Contents insurance$/) do
  find('#node-15 > div > div > div > div > table.insurance-products > tbody > tr > td:nth-child(1) > a.button-image').click
end

When(/^click get Home&Contents quote button$/) do
  find('#node-481 > div > div > div > div > div:nth-child(3) > div > table > tbody > tr > td:nth-child(1) > p:nth-child(4) > a:nth-child(2)').click
end

When(/^click get classic quote$/) do
  find('#node-482 > div > div > div > div > div.product-box.product-box-background.product-box-margin-top.product-box-margin-bottom.product-box-border-radius-top-left.product-box-border-right.product-box-heading-bg-dark-green > div > p.rtecenter > a').click
end

#PolicyType

Before do
  popup = page.driver.browser.window_handles.last
  page.driver.browser.switch_to.window(popup)
end

When(/^choose classic cover of describe$/) do
  find("#occupancyDetailButtons > label:nth-child(2) > span").click
end

When(/^choose permanent residence$/) do
  find("#residencyTypeButtons > label:nth-child(2) > span").click
end

When(/^choose classic over of type$/) do
  find("#coverTypeButtons > label:nth-child(6) > span").click
end


When(/^input contents postcode$/) do
  find('#address\2e suburbPostcodeState').set('MELBOURNE, 3000, VIC')
end

When(/^input contents street address$/) do
  find('#address\2e streetAddress').set('20 collins st')
end


When(/^input policy holder DOB$/) do
  find('#dateOfBirth').set('01011990')
end

When(/^do not have existing insurance policy before$/) do
  find('#existingSuncorpPoliciesButtons > label:nth-child(4) > span').click
end

When(/^continue1$/) do
  click_button('Continue')
end

#AboutYourHome
When(/^choose free standing home building types$/) do
  find('#buildingTypeButtons > label:nth-child(2) > span').click
end

When(/^choose concrete slab built$/) do
  find('#freeStandingOptionsButtons > label:nth-child(2) > span').click
end

When(/^choose aluminium material for walls$/) do
  find('#externalWallMaterialButtons > label:nth-child(2) > span').click
end

When(/^choose aluminium material for roof$/) do
  find('#roofMaterialButtons > label:nth-child(2) > span').click
end

When(/^choose year at home construction$/) do
  select "2000-2007", :from => "constructionPeriod"
end

When(/^choose doors and building access$/) do
  find("#door-container > div > div.checkbox.field-doorLock.check-options").set(true)
end

When(/^continue2$/) do
  click_button('Continue')
end
