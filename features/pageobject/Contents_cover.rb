class ContentCover < SitePrism::Page
  element :individual_item_no,'#hasHighValueItemsButtons > label:nth-child(4) > span'
  element :personal_valuable_cover_no,'#hasPersonalValuablesButtons > label:nth-child(4) > span'
  element :quote_number,'#quoteSchedule > div.panel-right > div.quote-number.compact.sg-u-mediumAndSmallHidden > span.number.ClickTaleMask'
end