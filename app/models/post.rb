class Post < ActiveRecord::Base
  before_create :set_published_at

  private

  def set_published_at
    self.published_at = Time.now
  end
end