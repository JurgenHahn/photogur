class Image < ApplicationRecord

  validates :artist, presence: true

  validates :title, length: { in: 3..20 }

  validates :url, presence: true,
                  uniqueness: true

  validates :url, :format => URI::regexp(%w(http https))
  
  def self.newest_first
    Image.order("created_at DESC")
  end

  def self.most_recent_five
    Image.newest_first.limit(5)
  end

  def self.created_before(time)
    Image.where("created_at < ?", time)
  end
end
