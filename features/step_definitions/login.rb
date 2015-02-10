#!/bin/env ruby
# encoding: utf-8

Given(/^Amazon.co.uk is open$/) do
  visit("http://www.amazon.co.uk/")
end

When(/^I on click Sign-in$/) do
$loginpage_object.signintitle_button.click
  
end

And(/^enter valid user name password$/) do
  $loginpage_object.username.set "test_amazon@test.com"
  $loginpage_object.password.set "mirbod92"
  $loginpage_object.password.set "mirbod92"
  $loginpage_object.signin_button.click
end

Then(/^I am logged in$/) do
  assert_text('Hello, Cyrus', count: 1)
end

