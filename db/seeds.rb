# Create a default user
u = User.new(:username => 'test', :email => 'test@example.com', :password => 'test', :password_confirmation => 'test')
u.is_admin = true
u.is_moderator = true
u.save

# Create a default tag
t = Tag.new
t.tag = 'test'
t.save
