FactoryBot.define do
  factory :task do
    body { "MyText" }
    project { nil }
    complete { false }
  end
end
