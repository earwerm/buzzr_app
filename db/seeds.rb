User.destroy_all

u1 = User.create(:name => 'Steve', :email => 'steve@gmail.com', :password => 'a', :password_confirmation => 'a')
u2 = User.create(:name => 'Tarun', :email => 'tarun@gmail.com', :password => 'a', :password_confirmation => 'a')
u3 = User.create(:name => 'Dan', :email => 'dan@gmail.com', :password => 'a', :password_confirmation => 'a')
u4 = User.create(:name => 'Michael', :email => 'michael@gmail.com', :password => 'a', :password_confirmation => 'a')