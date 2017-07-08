FactoryGirl.define do
  factory :room do
    name         "new song"
    album         "new album"
    year          2000
    rating        2
    artist              { build(:artist) }
  end
end
