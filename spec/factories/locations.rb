FactoryBot.define do
  factory :location do
    id { 1 }
    url { "MyString" }
    name { "MyString" }
    country_code { "MyString" }
    map_image { "MyString" }
    total_launch_count { 1 }
    total_landing_count { 1 }
  end
end
