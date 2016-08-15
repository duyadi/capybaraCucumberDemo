class BuildingCover < SitePrism::Page
  element :standard_quality_construction,'#constructionQualityButtons > label:nth-child(2) > span'
  element :flat_land_slope,'#buildingCover > fieldset:nth-child(2) > div:nth-child(2) > div > div.columns-group > div > div:nth-child(1) > div.radio-btns.field-slopeType > label'
  element :single_storey,'#buildingCover > fieldset:nth-child(2) > div:nth-child(3) > div > div > div > div:nth-child(1) > div.radio-btns > label'
  element :one_bedroom,'#numberOfBedroomsButtons > label:nth-child(2)'
  element :largebedroom,'#bedroom-size > div.question > div.columns-group > div > div:nth-child(2) > div.radio-btns > label'
  element :one_bathroom,'#numberOfBathroomsButtons > label:nth-child(2)'
  element :no_carspace,'#carSpaceButtons > label:nth-child(2)'
  element :swimmingpool_outbuilding,'#swimmingPool'
  element :shed_outbuilding,'#shed'
  element :estimate_cost,'#estimateReplacementCost'

end