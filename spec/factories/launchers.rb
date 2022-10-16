FactoryBot.define do
  factory :launcher do
    id { SecureRandom.uuid }
    url { 'MyString' }
    launch_library_id { 1 }
    slug { 'MyString' }
    name { 'MyString' }
    net { 'MyString' }
    window_end { 'MyString' }
    window_start { 'MyString' }
    inhold { false }
    tbdtime { false }
    tbddate { false }
    probability { 1 }
    holdreason { 'MyString' }
    failreason { 'MyString' }
    hashtag { 'MyString' }
    webcast_live { false }
    image { 'MyString' }
    infographic { 'MyString' }
    imported_t { '2022-10-09 08:24:11' }
    publishing_status { 1 }
    manual_update { false }
  end
end
