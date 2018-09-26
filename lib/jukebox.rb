songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

#def say_hello(name)
#  "Hi #{name}!"
#end

#puts "Enter your name:"
#users_name = gets.chomp

#puts say_hello(users_name)



def help
  puts "I accept the following commands:
        - help : displays this help message
        - list : displays a list of  songs you can play
        - play : lets you choose a song to displays
        - exit : exits the program"
end

def list(arr)
  arr.each_with_index do |x, i|
    puts "#{i+1}. #{x}"
  end
end

def play(arr)
  puts "Please enter a song name or number:"
  song = gets.chomp
  arr.each do |x|
    if x.include? song
      puts "Playing #{x}"
    else
      puts "Invalid input, please try again"
    end
  end

end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  puts "Please enter a command:"
  lala = gets.chomp

while lala != "exit"
  case lala
  when  "list"
    list(songs)
    puts "Please enter a command:"
    lala = gets.chomp
  when "help"
    help
    puts "Please enter a command:"
    lala = gets.chomp
  when "play"
    play(songs)
    puts "Please enter a command:"
    lala = gets.chomp
  else
    puts "nope"
    lala = gets.chomp
  end
end
exit_jukebox
end
