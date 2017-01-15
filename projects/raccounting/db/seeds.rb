# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

demo_company = Company.create_with(:address => 'Demo Company Address').find_or_create_by(:name => 'DemoCompany')
demo_user = User.create_with(
                    :name => 'Demo', 
                    :surname => 'User',
                    :password => 'demo',
                    ).find_or_create_by(
                        :email => 'demo@demo.com',
                        :company => demo_company
                    )