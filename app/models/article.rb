class Article < ApplicationRecord
    def self.search(search)
    if search
      where("title ILIKE ?", "%#{search}%")
    else
      all
    end
  end
end
