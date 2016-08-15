Feature: Create a home policy at Suncorp in sys env
  Scenario: Create a classic home policy at Suncorp in sys env
    #GotoPage
    * open online policy page
    * choose Home&Contents classic insurance
    #PolicyType
    * choose classic cover of describe
    * choose permanent residence
    * choose classic over of type
    * input contents postcode
    * input contents street address
    * pause
    * input policy holder DOB
    * input policy holder DOB
    * do not have existing insurance policy before
    * continue
    #AboutYourHome
    * choose concrete slab built
    * choose aluminium material for walls
    * choose aluminium material for roof
    * choose year at home construction
    * choose doors and building access
    * continue
    #BuildingCover
    * choose standard quality construction
    * choose flat land slope
    * choose single storey level of the home
    * choose one bedroom
    * choose large size of main bedroom
    * choose one bathroom
    * choose no car space
    * choose swimming pool outbuilding
    * choose shed outbuilding
    * choose estimate replacement cost
    * wait "3" seconds for loading
    * pause
    * continue
    #LevelOfCover
    * input contents replacement cost
    * continue
    #LevelOfCoverChooses
    * wait "10" seconds for loading
    * pause
    * I should see the "Select & Add Contents" in classic level
    * choose classic cover
    #ContentsCover
    * choose no for individual item
    * choose no for personal valuable cover
    * continue
    * see quote number "^QTE\d{9}$" in QSP page
#    * see quote number "^[A-Z]{3}\d{9}$" in QSP page


