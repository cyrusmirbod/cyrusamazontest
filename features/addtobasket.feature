Feature: Check basket total

Scenario: Check basket total

Given When I add "chromecast" to my basket
When I check my basket total
Then it should match the price of chromecast



