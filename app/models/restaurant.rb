class Restaurant < ApplicationRecord
  has_many :congestions
  has_many :comments

  def detail
    {
      restaurant_id: restaurant_id,
      restaurant_name: restaurant_name,
      category: main_cat_name,
      latitude: lat,
      longitude: lng,
      congestion: latest_congestion,
      comments: detail_comments,
    }
  end

  private
    def detail_comments
      comments.map do |c|
        {
          name: c.name,
          text: c.text,
          posted_at: c.created_at
        }
      end
    end

    def latest_congestion
      range = (Time.now - 1.hour)..Time.now
      {
        crowded: congestions.where(degree: 1, updated_at: range).count,
        normal:  congestions.where(degree: 2, updated_at: range).count,
        empty:   congestions.where(degree: 3, updated_at: range).count,
      }
    end
end
