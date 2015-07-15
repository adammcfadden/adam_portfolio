FactoryGirl.define do
  factory :user do
    email 'test@gmail.com'
    password '12345678'
    password_confirmation '12345678'
  end

  factory :skill do
    name 'Java'
    description 'A programming language'
  end

  factory :project do
    name 'Java'
    description 'A programming language'
    github_url 'https://atom.io/packages/spotify-linux'
    live_url 'https://atom.io/packages/spotify-linux'
    skill
  end

end
