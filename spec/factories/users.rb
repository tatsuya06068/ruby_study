FactoryBot.define do
    factory :user do
        name { 'テストユーザー' }
        sequence(:email) {|n| "#{n}@example.com" }
        password { 'password' }
    end
end