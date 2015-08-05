require 'rails_helper' # needed for all rspec

RSpec.describe Post, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"

# prep work
  before(:all)do # before action allows instance variable to be available throughout the test process
    @post = Post.new(body:"My Body", title:"My Title") # instance variable
  end

# test 1 <body>
  it "should have a matching body" do # checks if that body tag you just created matches the string shown
    # expect(@post.body).to eq("Your Body") # will fail #rspec # 1 example, 1 failure
    expect(@post.body).to eq("My Body") # will pass #rspec # 1 example, 0 failures
  end
  
# test 2 <title>
  it "should have a matching title" do # checks if that title tag you just created matches the string shown
    # expect(@post.title).to eq("Your Title") # will fail #rspec # 1 example, 1 failure
    expect(@post.title).to eq("My Title") # will pass #rspec # 1 example, 0 failures
  end
end
