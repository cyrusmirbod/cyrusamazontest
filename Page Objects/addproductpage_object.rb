class Addproductpage < SitePrism::Page

element :first_link, :xpath, '//*[@id="result_0"]/div/div/div/div[2]/div[1]/a/h2'
element :addtobasket_button, :xpath, '//*[@id="add-to-cart-button"]'
element :chkout, :xpath, '//*[@id="nav-cart"]/span[2]'

end




