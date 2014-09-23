# Create a default admin user
u = User.new(:username => 'superadmin', :email => 'admin@example.com', :password => 'test', :password_confirmation => 'test')
u.is_admin = true
u.is_moderator = true
u.save

# create a non-admin user
u = User.create(:username => 'dev', :email => 'dev@example.com', :password => 'test', :password_confirmation => 'test')

# Create some default tags
Tag.create(tag: 'docker')
Tag.create(tag: 'paas')
Tag.create(tag: 'panamax')
Tag.create(tag: 'centurylink')
Tag.create(tag: 'kubernetes')
Tag.create(tag: 'mesos')
