class Article < ApplicationRecord
  validates :title, presence: true

    def self.search(search)
    if search
      where("title ILIKE ? OR body ILIKE ?", "%#{search}%","%#{search}%")
    else
      all
    end
  end
end
