# this file will capyabara to test new.html.erb
require 'rails_helper' # needed for all rspec

RSpec.feature "adding posts" do # feature

  scenario "allow a user to add a post" do # scenario
    
    visit new_post_path # when adding a post we visit the new_post_path 
    
    fill_in "Title", with: "My Title" # then fill_in title..... 
    fill_in "Body", with: "My Body"

    click_on("Create Post")           # clicking Create Post should 

  # then content in post should have both title and body strings that match 
  # notice new.html.erb (a view) is tested here by feature, 
  # the previous example used describe to test post.rb (a model)
    # if you did not make a new.html.erb or it did not have the below tested here # fail version
    expect(page).to have_content("My Title") # success
    expect(page).to have_content("My Body")  # success

  end
end