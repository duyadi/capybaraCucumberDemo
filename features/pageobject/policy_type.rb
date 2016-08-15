class PolicyType < SitePrism::Page
  element :choose_classic_describe_cover, "#occupancyDetailButtons > label:nth-child(2) > span"
  element :choose_permanent_residence, "#residencyTypeButtons > label:nth-child(2) > span"
  element :choose_class_over_type, "#coverTypeButtons > label:nth-child(6) > span"
  element :postcode, '#address\2e suburbPostcodeState'
  element :address, '#address\2e streetAddress'
  element :brithday, '#dateOfBirth'
  element :non_existing_insurance, '#existingSuncorpPoliciesButtons > label:nth-child(4) > span'
end
