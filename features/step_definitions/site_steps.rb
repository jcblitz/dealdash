Given /^the following sites:$/ do |sites|
  Site.create!(sites.hashes)
end

When /^I delete the (\d+)(?:st|nd|rd|th) site$/ do |pos|
  visit sites_url
  within("table tr:nth-child(#{pos.to_i+1})") do
    click_link "Destroy"
  end
end


Given /^the following (.+) records?$/ do |factory, table|
  table.hashes.each do |hash|
      Factory.create(:site, hash)
  end
end