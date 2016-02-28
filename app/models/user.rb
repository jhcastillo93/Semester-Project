class User < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true
  has_secure_password
  has_many :products, dependent: :destroy
  after_destroy :ensure_an_admin_remains

  geocoded_by :address
  after_validation :geocode

  private
    def ensure_an_admin_remains
      if User.count.zero?
        raise "Can't delete last user"
      end
    end     
end