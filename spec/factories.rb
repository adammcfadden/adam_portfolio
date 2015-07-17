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
    factory :project_skill do
      skill
    end
  end

  factory :reference do
    name 'Bob Smith'
  end

  factory :post do
    name 'Coding in Ruby'
    body 'Its so fun'
  end

  factory :comment do
    body 'So cool'
  end

end
