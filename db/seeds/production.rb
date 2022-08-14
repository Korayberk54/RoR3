puts 'Seeding production database...'


User.create(email: 'ayberk.korucu@hotmail.com',
    password: 'password',
    password_confirmation: 'password',
    name: 'Ayberk',
    role: User.roles[:admin])
User.create(email: 'john@doe.com',
    password: 'password',
    password_confirmation: 'password',
    name: 'John Doe')

10.times do |x|
post = Post.create(title: "Title #{x}",
             body: "Body #{x} Words go here Idk",
             user_id: User.first.id)

5.times do |y|
post.comments.create(body: "Comment #{y}",
           user_id: User.second.id)
end
end
