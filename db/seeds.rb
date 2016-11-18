# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Post.new([{title:"Humans are really bad at recharging, it takes about 8 hours charge for 16 hours of use.", content:"Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Aenean lacinia bibendum nulla sed consectetur. Nullam id dolor id nibh ultricies vehicula ut id elit. Cras mattis consectetur purus sit amet fermentum."}, {title:"Paying for contact lenses every month is essentially paying a monthly subscription to see life in HD", content:"Maecenas faucibus mollis interdum. Vestibulum id ligula porta felis euismod semper."}, {title:"My mental picture of Russia is always from the perspective of a dashcam", content:"Nullam quis risus eget urna mollis ornare vel eu leo. Curabitur blandit tempus porttitor."}])
Post.delete_all

Post.create(title:"Humans are really bad at rechargin, it takes about 8 hours charge for 16 hours of use.", content:"Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Aenean lacinia bibendum nulla sed consectetur.  Nullam id dolor id nibh ultricies vehicula ut id elit. Cras mattis consectetur purus sit amet fermentum.")
Post.create(title:"Paying for contact lenses every month is essentially paying a monthly subscription to see life in HD", content:"Maecenas faucibus mollis interdum. Vestibulum id ligula porta felis euismod semper.")
Post.create(title:"My mental picture of Russia is always from the perspective of a dashcam", content:"Nullam quis risus eget urna mollis ornare vel eu leo. Curabitur blandit tempus porttitor.")
