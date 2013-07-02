class Group < ActiveRecord::Base
  has_secure_password
  attr_accessible :login_id, :name, :password


  class << self

    def authenticate(login_id, password)
      group = find_by_login_id(login_id)
      # TODO: RUBYぽく
      if group.present? && 
        BCrypt::Password.new(group.password_digest) == password
        return group
      else
        return nil
      end
    end

  end
end
