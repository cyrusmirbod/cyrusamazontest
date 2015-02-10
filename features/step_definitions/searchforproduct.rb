Given(/^When I search for "([^"]*)"$/) do |arg|
  visit("http://amazon.co.uk")
  $searchpage_object.search_textbox.click
  $searchpage_object.search_textbox.set "chromecast"
  $searchpage_object.submit_button.click
end

When(/^the search results are displayed$/) do
  assert_text('results for "chromecast"', count: 1)
end

Then(/^the first result has the word "([^"]*)" in it$/) do |arg|
  elmt = find(:xpath, '//*[@id="result_0"]/div/div/div/div[2]/div[1]/a/h2').text
  puts elmt
  elmt.should have_text('Chromecast')

end