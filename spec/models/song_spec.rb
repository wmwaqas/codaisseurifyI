require 'rails_helper'

RSpec.describe Song, type: :model do
  describe "validations" do
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_uniqueness_of(:name) }
    it { is_expected.to validate_presence_of(:album) }
    it { is_expected.to validate_presence_of(:year) }
    it { is_expected.to validate_presence_of(:rating) }
  end
  describe "association with artist" do
    it { is_expected.to belong_to :artist}
  end
end
