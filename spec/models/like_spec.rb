# == Schema Information
#
# Table name: likes
#
#  id         :bigint           not null, primary key
#  photo      :string
#  references :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  fan_id     :bigint           not null
#
# Indexes
#
#  index_likes_on_fan_id  (fan_id)
#
# Foreign Keys
#
#  fk_rails_...  (fan_id => users.id)
#
require "rails_helper"

RSpec.describe Like, type: :model do
  describe "has a belongs_to association defined called 'fan' with Class name 'User'", points: 1 do
    it { should belong_to(:fan).class_name("User") }
  end
end

RSpec.describe Like, type: :model do
  describe "has a belongs_to association defined called 'photo'", points: 1 do
    it { should belong_to(:photo) }
  end
end
