class User < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true
  has_secure_password
  geocoded_by :address
  after_validation :geocode
  has_many :products, dependent: :destroy
  after_destroy :ensure_an_admin_remains

  private
    def ensure_an_admin_remains
      if User.count.zero?
        raise "Can't delete last user"
      end
    end     
end