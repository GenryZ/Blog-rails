class Article < ApplicationRecord
  has_many :comments, dependent: :destroy #связывание двух сущностей comment and article
end
