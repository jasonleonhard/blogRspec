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
gm temp master
sync "k"

