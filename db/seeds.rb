# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

messages1  = Message.create(
    [
        {author: 'james.blond@mi6.com', recipient: 'money.penny@mi6.com', text: 'mes notes de frais ?'},
        {author: 'money.penny@mi6.com', recipient: 'james.blond@mi6.com', text: 'à faire singer par M'},
        {author: 'james.blond@mi6.com', recipient: 'money.penny@mi6.com', text: 'M ne va pas être contente ... trop vodka martini ...'}
    ]
)

Discussion.create(messages: messages1)

messages2 = Message.create(
    [
        {author: 'james.blond@mi6.com', recipient: 'q@mi6.com', text: 'c\'est quoi le code de l\'alarme de l\'Aston ?'},
        {author: 'q@mi6.com', recipient: 'james.blond@mi6.com', text: 'le code est 007, et doucement sur l\'embrayage ..'},
        {author: 'james.blond@mi6.com', recipient: 'q@mi6.com', text: 'Tkt Q j\'irai pas plus vite qu\'à fond ...'}
    ]
)

Discussion.create(messages: messages2)

