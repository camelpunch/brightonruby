Given /^a comment exists with text: "([^"]*)"$/ do |text|
  @text = text
  Comment.create :text => text
end

When /^I add a comment "([^"]*)"$/ do |text|
  fill_in "comment_text", :with => text
end

When /^the comment is approved on the command line$/ do
  comment = Comment.find_by_text @text
  comment.approved = true
  comment.save
end

Then /^comment "([^"]*)" should be visible on the website$/ do |text|
  page.should have_content(text)
end

Then /^an unapproved comment notice should be visible on the website$/ do
  page.should have_content("unapproved comment")
end

Then /^I should see an unapproved comment notice$/ do
  pending # express the regexp above with the code you wish you had
end

