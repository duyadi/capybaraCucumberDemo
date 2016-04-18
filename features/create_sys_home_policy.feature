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
    * input policy holder DOB
    * do not have existing insurance policy before
    * continue1
    #AboutYourHome
    * choose free standing home building types
    * choose concrete slab built
    * choose aluminium material for walls
    * choose aluminium material for roof
    * choose year at home construction
    * choose doors and building access
    * continue2