class User < ActiveRecord::Base
  has_many :questions, dependent: :destroy
  has_many :answers, dependent: :destroy
  validates :uid, presence: true
  
def facebook
  @facebook ||=Koala::Facebook::API.new(oauth_token)
end

  def self.create_with_omniauth(auth)
    create! do |user|
      user.provider = auth['provider']
      user.uid = auth['uid']
      if auth['credentials']
      user.oauth_token = auth['credentials']['token']||""
      user.oauth_expires_at = Time.at(auth['credentials']['expires_at'])||""
      end
      if auth['info']
         user.name = auth['info']['name'] || ""
      end
    end
  end

end
