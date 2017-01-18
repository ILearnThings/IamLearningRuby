# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

demo_company = Company.create_with(:address => 'Demo Company Address').find_or_create_by(:name => 'DemoCompany')
if User.exists?(company: demo_company.id, email: 'demo@demo.com') == false
    demo_user = User.create(
                        :name => 'Demo', 
                        :surname => 'User',
                        :password => 'demopass',
                        :password_confirmation => 'demopass',
                        :email => 'demo@demo.com',
                        :company => demo_company
                        )
end