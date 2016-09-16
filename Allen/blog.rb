#create new blog
Blog.new(name:"history", description:"independence day").save

#create post for each blog
Post.new(title:"independence day", content:"thats an important day", blog: Blog.find(1)).save

#create messages for the first post
Message.new(author:"allen", message:"yea i agree", post: Post.find(1)).save

#retrieve all posts for the first blog
#

# retrieve all posts for the last blog
#

# update the first post's title.
Post.first.update(title:"indy day")

# delete the third post and messages associated with third post
#

# retrieve all blogs
Blog.all

# retrieve all blogs whose id is less than 5
Blog.where("id < 2")
