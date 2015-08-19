class Comments
  def initialize
    @blog_index = ''
    @comment = ''
    @commentlist = []
  end

  def prepare_blog(blog_index)
    @commentlist[blog_index] = []
  end

  def add(blog_index, comment)
    @blog_index, @comment = blog_index, comment
    @commentlist[blog_index] << comment
  end

  def show(blog_index, comment_index)
    @commentlist[blog_index][comment_index]
  end

  def show_branch(blog_index)
    @commentlist[blog_index]
  end

  def show_all
    @commentlist
  end

  def remove(blog_index, comment_index)
    @commentlist[blog_index].delete_at(comment_index)
  end

  def remove_branch(blog_index)
    @commentlist.delete_at(blog_index)
  end

  def count(blog_index)
    @commentlist[blog_index].count
  end
end
