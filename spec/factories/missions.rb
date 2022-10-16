FactoryBot.define do
  factory :mission do
    id { 1 }
    launch_library_id { 1 }
    name { 'MyString' }
    description { 'MyText' }
    launch_designator { 'MyString' }
    type { '' }
    orbit_id { 1 }
  end
end
