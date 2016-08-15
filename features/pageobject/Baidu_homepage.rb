class Baidu < SitePrism::Page
  set_url "http://www.baidu.com"

  element :click_HomeContent, "#kw"
  element :search_button, "#su"
  element :result,"#div.c-row > div.c-span6 > a > img"
end