Article.delete_all

user = User.first
text = "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
"

p 'Inicando ...'

  Category.all.each do |category|
    30.times do
      Article.create!(
        title: "Article #{rand(10000)}",
        body: text,
        category_id: category.id,
        user_id: user.id,
        created_at: rand(365).days.ago,
      )
    end
  end

p 'Terminou!'
