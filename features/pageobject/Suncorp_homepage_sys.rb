class HomeSYS < SitePrism::Page
  set_url "https://online1.test.aainsurance.co.nz/home/pub/"
  # set_url "https://insurance.sys.suncorp.com.au/home/pub/"
  # set_url "https://online2.test.aainsurance.co.nz/home/pub/"
  element :choose_classcihomecontent, "#classic"
  element :common_continue_button, "#_eventId_submit"
end
