FactoryGirl.define do
  factory :property do
    description "MyText"
    type ""
    price 1
    city "MyString"
    state "MyString"
    address "MyString"
    zipcode 1
    date_listed "2017-05-27"
    year_built "2017-05-27"
    status "MyString"
    no_bed 1
    no_bath 1
    garage false
    parking "MyString"
    tax 1.5
    contact ""
  end
end
