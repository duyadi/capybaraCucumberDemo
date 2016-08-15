When(/^pause$/) do
  binding.pry
end

#GotoPage
When(/^open online policy page$/) do
  @homepage = HomeSYS.new
  @homepage.load
end

When(/^choose Home&Contents classic insurance$/) do
  @homepage.choose_classcihomecontent.click
end

#PolicyType
When(/^choose classic cover of describe$/) do
  @policytype = PolicyType.new
  @policytype.choose_classic_describe_cover.click
end

When(/^choose permanent residence$/) do
  @policytype.choose_permanent_residence.click
end

When(/^choose classic over of type$/) do
  @policytype.choose_class_over_type.click
end

When(/^input contents postcode$/) do
  @policytype.postcode.set('MELBOURNE, 3000, VIC')
end

When(/^input contents street address$/) do
  @policytype.address.set('20 collins st')
end

When(/^input policy holder DOB$/) do
  @policytype.brithday.set('01011990')
end

When(/^do not have existing insurance policy before$/) do
  @policytype.non_existing_insurance.click
end

When(/^continue$/) do
  @homepage.common_continue_button.click
end


When(/^choose concrete slab built$/) do
  @aboutyourhome = AboutYourHome.new
  @aboutyourhome.concrete_slab_built.click
end

When(/^choose aluminium material for walls$/) do
  @aboutyourhome.aluminium_walls.click
end

When(/^choose aluminium material for roof$/) do
  @aboutyourhome.aluminium_roof.click
end

When(/^choose year at home construction$/) do
  @aboutyourhome.home_construction_year.click
end

When(/^choose doors and building access$/) do
  page.execute_script("$('#doorLock1').click()")
end


When(/^choose standard quality construction$/) do
  @buildingcover = BuildingCover.new
  @buildingcover.standard_quality_construction.click
end

When(/^choose flat land slope$/) do
  @buildingcover.flat_land_slope.click
end

When(/^choose single storey level of the home$/) do
  @buildingcover.single_storey.click
end

When(/^choose one bedroom$/) do
  @buildingcover.one_bedroom.click
end

When(/^choose large size of main bedroom$/) do
  @buildingcover.largebedroom.click
end

When(/^choose one bathroom$/) do
  @buildingcover.one_bathroom.click
end

When(/^choose no car space$/) do
  @buildingcover.no_carspace.click
end

When(/^choose swimming pool outbuilding$/) do
  page.execute_script("$('#swimmingPool').click()")
end

When(/^choose shed outbuilding$/) do
  page.execute_script("$('#shed').click()")
end

When(/^choose estimate replacement cost$/) do
  @buildingcover.estimate_cost.click
end

When(/^input contents replacement cost$/) do
  @levelofcover = LevelOfCover.new
  @levelofcover.contents_cost.set('13000')
end

When(/^wait "([^"]*)" seconds for loading$/) do |sec|
  sleep(sec.to_i)
end

When(/^I should see the "([^"]*)" in classic level$/) do |content|
  expect(page).to have_content(content)
end

When(/^choose classic cover$/) do
  @levelofcover.classiclevel.click
end

When(/^choose no for individual item$/) do
  @contentcover = ContentCover.new
  @contentcover.individual_item_no.click
end

When(/^choose no for personal valuable cover$/) do
  @contentcover.personal_valuable_cover_no.click
end

When(/^see quote number "([^"]*)" in QSP page$/) do |quoteNumber|
  @contentcover.quote_number.assert_text Regexp.new(quoteNumber)
  puts '******************'
  puts '   ' + @contentcover.quote_number.text
  puts '******************'
end