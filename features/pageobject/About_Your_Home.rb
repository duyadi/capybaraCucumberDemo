class AboutYourHome < SitePrism::Page
  element :concrete_slab_built,'#freeStandingOptionsButtons > label:nth-child(2) > span'
  element :aluminium_walls,'#externalWallMaterialButtons > label:nth-child(2) > span'
  element :aluminium_roof,'#roofMaterialButtons > label:nth-child(2) > span'
  element :home_construction_year,'#constructionPeriod > option:nth-child(3)'
  # element :doors_building_access,'#doorLock1'
end