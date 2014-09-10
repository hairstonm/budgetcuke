require 'watir-webdriver'
require 'page-object'

include PageObject::PageFactory




When(/^I submit my car rental requirements$/) do
  visit_page Quote

  on_page Quote do |page|
    page.pick_up = "08/16/2014"
    page.return = '09/02/2014'
    page.location = "2960 Main St West, Snellville, Georgia - G5S"
    page.submit
  end
end

Then(/^I get the results$/) do
  on_page QuoteResults do |page|
    page.response.should match /(step 2 of 4: choose my car)/

  end
end

When(/^I put the pickup time before rental$/) do
  visit_page Quote
  on Quote do |page|
    page.pick_up = "08/30/2014"
    page.return = "08/24/2014"
    page.location = "2960 Main St West, Snellville, Georgia - G5S"
    page.submit
  end
end

Then (/I get an error returned$/) do
  on_page QuoteResults do |page|
    sleep 2
    page.page_results.should match /Whoops! Your return time is before your pick-up time. Please correct before continuing./
  end
end
