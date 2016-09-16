# Create 5 users

# Create 5 blogs

# Have the first 3 blogs be owned by the first user
Owner.create(user:User.first, blog:Blog.first).save

# Have the 4th blog you create be owned by the second user
Owner.create(user:User.second, blog:Blog.fourth).save

# Have the 5th blog you create be owned by the last user
Owner.create(user:User.last, blog:Blog.fifth).save

#### Have the third user own all of the blogs that were created.
Owner.create(user:User.third, blog:Blog.first).save

# Have the first user create 3 posts for the blog with an id of 2. Remember that you shouldn't do Post.create(user: User.first, blog_id: 2) but more like Post.create(user: User.first, blog: Blog.find(2)). AgBlog.aain, you should never reference the foreign key in Rails.
Post.create(blog:Blog.second, user:User.first, title:"9th grade", content:"goodtimes").save

# Have the second user create 5 posts for the last Blog.
Post.create(blog:Blog.last, user:User.second, title:"somewere", content:"valley!!!!!!!").save

# Have the 3rd user create several posts for different blogs.
Post.create(blog:Blog.third, user:User.fourth, title:"his", content:"ben affleck!!!!!!!").save

# Have the 3rd user create 2 messages for the first post created and 3 messages for the second post created
Message.create(post:Post.first, user:User.third, author:"ice tea", message:"Whats up dude").save

# Have the 4th user create 3 messages for the last post you created.
Message.create(post:Post.last, user:User.fourth, author:"idk", message:"too many dude").save

# Change the owner of the 2nd post to the last user.
Post.find(2).update(user:User.last)

# Change the 2nd post's content to be something else.
Post.find(2).update(content:"food and drinks dude")

# Retrieve all blogs owned by the 3rd user (make this work by simply doing: User.find(3).blogs).
User.find(3).blogs

# Retrieve all posts that were created by the 3rd user
Post.where(user:User.third)

# Retrieve all messages left by the 3rd user
Message.where(user:User.third)

# Retrieve all posts associated with the first blog as well as who left these posts.
Post.where(blog: Blog.first)

# Retrieve all messages associated with the second blog along with all the user information of those who left the messages.
Post.joins(:blog, :user).select("*").where(blog:Blog.second)

# Grab all user information of those that own the first blog (make this work by allowing Blog.first.owners to work).

# Change it so that the first blog is no longer owned by the first user.
Owner.update(1, :user_id => 2, :blog_id => 2)
