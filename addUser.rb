class Computer
  def initialize(username,password)
  @username=username
  @password=password
  @files=Hash.new
  @@users[username] = password
  end

  @@users=Hash.new

  def create(filename)
    time=Time.now
    @files[filename]=time
    puts "Created"
  end

  def Computer.get_users
    return @@users
  end

end

my_computer=Computer.new("me","aaa")
