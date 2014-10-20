FactoryGirl.define do
  factory :reservation do
    begin_time "1980-01-01 17:00:00"
    restaurant { FactoryGirl.create(:restaurant) }
    user { FactoryGirl.create(:user) }
  end  
end