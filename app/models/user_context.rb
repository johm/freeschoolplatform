class UserContext
  attr_reader :user, :site

  def initialize(user, site)
    @user = user
    @site = site
  end
end
