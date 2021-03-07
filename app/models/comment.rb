class Comment < ApplicationRecord
  belongs_to :article #означает что эта модель принадлежит к статье
                      #belongs_to создано при помощи references
end
