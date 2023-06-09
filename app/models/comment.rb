# == Schema Information
#
# Table name: comments
#
#  id         :bigint           not null, primary key
#  comment    :text             not null
#  name       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  board_id   :bigint
#
# Foreign Keys
#
#  fk_rails_...  (board_id => boards.id)
#
class Comment < ApplicationRecord
  belongs_to :board

  validates :name, presence: true, length: { maximum: 10 }
  validates :comment, presence: true, length: { maximum: 1000 }
end
