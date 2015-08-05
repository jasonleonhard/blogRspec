require 'rails_helper'

RSpec.describe Post, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  before(:all)do 
    @post = Post.new(body:"My Body", title:"My Title")
  end
  it "should have a matching body" do
    expect(@post.body).to eq("Your Body") # will fail #rspec # 1 example, 1 failure
    # expect(@post.body).to eq("My Body") # will pass #rspec # 1 example, 0 failures
  end
end
