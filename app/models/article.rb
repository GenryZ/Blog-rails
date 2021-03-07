class Article < ApplicationRecord
  has_many :comments #связывание двух сущностей comment and article
end
