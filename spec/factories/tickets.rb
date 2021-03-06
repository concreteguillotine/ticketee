FactoryBot.define do
    factory :ticket do
        name { "Example Ticket" }
        description { "An example ticket" }
        association :author, factory: :user
    end
end