FactoryGirl.define do
  factory :song do
    track    "aaa"
    lyrics   "bbb"
    album    "ccc"
    artist   { build(:artist)}
  end
end
