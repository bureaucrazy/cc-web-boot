class Blogs
  def initialize
    @bloglist = []
  end

  def add(entry)
    @bloglist << entry
  end

  def show_all
    @bloglist
  end

  def show(blog_index)
    @bloglist[blog_index]
  end

  def count
    @bloglist.count
  end

  def remove(blog_index)
    @bloglist.delete_at(blog_index)
  end
end
