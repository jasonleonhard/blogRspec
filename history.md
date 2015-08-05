# comments lie, tests do not, use rspec and capybarya 
# https://www.youtube.com/watch?v=gsgG-JvXsJ0&feature=iv&src_vid=UhInuf1ar7Q&annotation_id=annotation_2414484661
# consider creating a workflow from begining of project
history -c 
h > history.md

rails new blogRspec
cd blogRspec/
s .
bi
rails g rspec:install
rails g model post title:string body:text
rake db:migrate
rspec spec/models/post_spec.rb # or just rspec.... 
gb simpleRspecWorking
gb temp
gco master # prob should have created new branch insead of working from master
git push --set-upstream origin master
gd temp master # show now master changed
gm temp master
sync "k"
gm master simpleRspecWorking
gb -d temp

# should actually do this flow

gb _1
gco _1
(do work, save files)
sync "_1"
gb
gco master
gd
gm _1 master
gst

# repeating similarly
gb _2
gco _2
..........

gb capybara
gco capybara

# Gemfile
gem 'capybara', '~> 2.4.4'

bi 
rails g controller posts
mkdir spec/features
touch spec/features/add_posts_rspec.rb

# code spec/features/add_posts_rspec.rb
rspec spec/features/add_posts_rspec.rb # will fail bc no routes

# routes.rb 
  resources :posts
rr

# posts_controller.rb 
  def new
  end

# touch app/views/posts/new.html.erb
# code new.html.erb 
<!-- each of these lines are needed and will throw different errors if not correct -->
<%= form_for(@post) do |f| %>
  <%= f.label :title %>
  <%= f.text_field :title %>

  <%= f.label :body %> <!-- failure -->
  <%= f.text_area :body %>

  <%= f.submit "Create Post" %> <!-- Failure/Error: click_on("Create Post")  # clicking Create Post should -->
  <% end %>

rspec spec/features/add_posts_rspec.rb 

# touch app/views/show.html.erb
# code new.html.erb 
<%= @post.title %>
<%= @post.body %>

rspec spec/features/add_posts_rspec.rb 
# should now pass

# basically write tests to fail, then succeed in similar manner
# when failing read rspecs Failure/Error:  to get an idea what failed
# should below that line tell you what is needed.... 
  # First argument in form cannot contain nil or be empty
  # missing template.... 
  # The action 'create' could not be found for PostsController
# finally target that file with: 

# more at: http://rspec.info/documentation/3.3/rspec-rails/