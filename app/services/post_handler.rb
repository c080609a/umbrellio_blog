class PostHandler
  include ActiveModel::Validations
  include ActiveModel::Serialization

  validates :title, presence: true
  validates :body, presence: true
  validates :ip, presence: true, ip: true
  validates :username, presence: true

  attr_reader :username, :title, :body, :ip, :id

  def self.execute(params)
    self.new(params).tap do |handler|
      handler.create_post
    end
  end

  def initialize(params)
    @username = params[:username]
    @title = params[:title]
    @body = params[:body]
    @ip = params[:ip]
  end

  def create_post
    if valid?
      user = User.find_or_create_by(username: @username)
      user_ip = UserIp.find_or_create_by(ip: @ip)

      @id = Post.create(
              user: user,
              title: @title,
              body: @body,
              user_ip: user_ip
            ).id

      user_ip.users << user unless user_ip.users.include?(user)
    end
  end
end
