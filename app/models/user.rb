class User < ApplicationRecord

  validates :username, uniqueness: true, presence: true

    has_secure_password
    def editor?
        self.role == 'editor'
    end


  def admin?
    self.role == 'admin'
  end

  def gravatar_url
    gravatar_id = Digest::MD5::hexdigest(email).downcase
    "https://gravatar.com/avatar/#{gravatar_id}.png"
  end
end
