FactoryGirl.define do
  factory :user do
    name "Harold Hamburger"
    email "wouldlike@burger.com"
    password "foobar"
    password_confirmation "foobar"
  end
end