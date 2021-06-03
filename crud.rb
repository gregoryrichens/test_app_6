require 'bcrypt'

module Crud
  # password create
  def create_hashed_password(password)
    BCrypt::Password.create(password)
  end
  # password unhash
  def verify_hashed_password(hashed_password)
    BCrypt::Password.new(hashed_password)
  end
  # secure user object
  def create_secure_user_object(user_list)
    user_list.each do |user|
      user[:password] = create_hashed_password(user[:password])
    end
  end
  # authenticate user
  def authenticate_user(username, password, user_list)
    user_list.each do |user|
      if user[:username] == username && verify_hashed_password(user[:password]) == password
        return user
      end
    end
    "Credentials were not correct"
  end
end
