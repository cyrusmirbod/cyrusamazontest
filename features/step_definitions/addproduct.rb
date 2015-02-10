Given(/^When I add "([^"]*)" to my basket$/) do |arg|
  visit("http://amazon.co.uk")
  $loginpage_object.signintitle_button.click
  $loginpage_object.username.set "test_amazon@test.com"
  $loginpage_object.password.set "mirbod92"
  $loginpage_object.password.set "mirbod92"
  sleep 1
  $loginpage_object.signin_button.click
  $searchpage_object.search_textbox.click
  $searchpage_object.search_textbox.set "chromecast"
  $searchpage_object.submit_button.click
  $addproductpage_object.first_link.click
  sleep 5
  $addproductpage_object.addtobasket_button.click

end

When(/^I check my basket total$/) do
  sleep 1
  assert_text('1 item was added to your basket', count: 1)
  $addproductpage_object.chkout.click
  baskettotal = find(:xpath, '//*[@id="activeCartViewForm"]/div[3]/p/span/span/span').text
 puts baskettotal

end

Then(/^it should match the price of chromecast$/) do

  baskettotal = find(:xpath, '//*[@id="activeCartViewForm"]/div[3]/p/span/span/span').text
  puts baskettotal

  price = find(:xpath, '//*[@id="activeCartViewForm"]/div[2]/div/div[4]/div[2]/div[2]/p[1]/span').text
  puts price

   assert_equal price, baskettotal
 click_on('Delete')
end