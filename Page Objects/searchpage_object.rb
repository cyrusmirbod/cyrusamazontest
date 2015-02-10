class Searchpage < SitePrism::Page

element :search_textbox, :id, 'twotabsearchtextbox'
element :search, :xpath, '//*[@id="search"]'
element :submit_button, :xpath, '//*[@id="nav-searchbar"]/div[1]/input'

end




