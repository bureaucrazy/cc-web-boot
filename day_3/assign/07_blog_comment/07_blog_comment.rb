require "./blogs.rb"
require "./comments.rb"

blog = Blogs.new
comment = Comments.new

# Prep dummy data
rng = Random.new
dummy = "Lorem ipsum dolor sit amet, consectetur adipisicing elit, "
dummy += "sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. "
dummy += "Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris "
dummy += "nisi ut aliquip ex ea commodo consequat."

# Inject dummy blogs
5.times do |n|
  blog.add "#{rng.rand(1..12)}.#{rng.rand(1..30)}.2015 #{dummy}"
  comment.prepare_blog (blog.count - 1)
end

# Inject dummy comments
20.times do |n|
  comment.add rng.rand(4), "My comment is #{n} + #{rng.rand(10000)}"
end

# Menu layout
def menu(index)
  hr = "--------------------------------------------------------------------------"
  case index
  when 0
    puts hr
  when 1
    system("clear")
    puts hr
    puts "Welcome to your blog:"
    puts hr
  when 2
    puts hr
    puts "Select an action (-2 to Exit):"
  when 3
    puts hr
    puts "Select an action (-1 to Back):"
  when 4
    puts hr
    puts "Select from the above items (-1 to Back): "
  when 7
    puts hr
    puts "Select blog to delete (-1 to Back): "
  when 8
    puts hr
    puts "Select comment to delete (-3 to Add or -1 to Back): "
  when 9
    puts hr
    puts "C O M M E N T S :"
    puts hr
  end
end

# Display ordered list of array
def list_items(input, index = 0, flag = 0)
  if flag == 0
    for b in 0...input.count
      puts "#{b}. #{input.show b}"
    end
  else
    for b in 0...input.count(index)
      puts "#{b}. #{input.show index, b}"
    end
  end
end

# Begin looping menu
while 1 == 1

  menu 1
  puts "1) Select a blog"
  puts "2) Delete a blog"
  puts "3) Add a blog entry"
  menu 2
  action = gets.to_i

  case action
  when 1
    menu 1
    list_items blog
    menu 3
    action2 = gets.to_i

    # Pick a blog to process.
    case action2

    # Display the blog entry and comments below it.
    when 0...blog.count
      blog_picked = action2
      menu 1
      puts blog.show blog_picked
      menu 9
      puts "Total comments: #{comment.count blog_picked}"
      list_items comment, blog_picked, 1
      menu 8
      action3 = gets.to_i

      # Pick a comment to process.
      case action3

      # Display comment and prompt to delete.
      when 0...comment.count(blog_picked)
        comment_picked = action3
        menu 1
        puts comment.show blog_picked, comment_picked
        menu 0
        print "Are you sure you want to delete comment #{comment_picked} (y/n)? "
        action4 = gets.chomp.strip
        if action4.downcase == "y"
          puts "Successfully removed comment #{comment_picked}."
          comment.remove blog_picked, comment_picked
        else
          puts "Aborting comment deletion."
        end
      when -3
        menu 1
        puts "Type your new comment below and press Enter when finished: "
        newcomment = gets.chomp.strip
        comment.add blog_picked, newcomment
        puts "Successfully added new comment."
      else
        puts "Nothing to process. Returning..."
      end
    else
      puts "Nothing to process. Returning..."
    end

  when 2
    menu 1
    list_items blog
    menu 3
    action2 = gets.to_i

    case action2
    when 0...blog.count
      menu 8
      print "Are you sure you want to delete blog entry #{action2} (y/n)? "
      action3 = gets.chomp.strip
      if action3.downcase == "y"
        puts "Successfully removed blog #{action2} and all #{comment.count action2} comments."
        blog.remove action2
        comment.remove_branch action2
        sleep 1
      else
        puts "Aborting blog deletion."
      end
    else
      puts "Nothing to process. Returning..."
    end

  when 3
    menu 1
    puts "Type your new blow below and press Enter when finished: "
    newblog = gets.chomp.strip
    unless newblog.empty?
      blog.add newblog
      comment.prepare_blog (blog.count - 1)
      puts "Successfully added new blog."
    else
      puts "Nothing to process. Returning..."
    end
  else
    menu 1
    puts "Good bye."
    sleep 1
    break
  end
  sleep 1
end
