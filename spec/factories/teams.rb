require 'faker'

FactoryGirl.define do
  sequence :name do |n|
    "Best Team Number #{n}"
  end
end

FactoryGirl.define do
  factory :team, :class => 'Team' do
    name
  end
end
