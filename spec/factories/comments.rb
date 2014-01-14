# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :comment do
    user_id 1
    title "Foobar title"
    content "Here is some content for testing"
    date "2014-01-10"
  end
  
end
