# Add your code here
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

# def say_hello(name)
#   "Hi #{name}!"
# end

# puts "Enter your name:"
# users_name = gets.strip

# puts say_hello(users_name)


def help 
  puts  "I accept the following commands:"
  puts  "- help : displays this help message"
  puts  "- list : displays a list of songs you can play"
  puts  "- play : lets you choose a song to play"
  puts  "- exit : exits this program"
end

def list(songs)
  songs.each_with_index {|song, index| puts "#{index +1}. #{song}"}
end

def play(songs)
  puts "Please enter a song name or number:"
  input = gets.strip
  number = input.to_i-1 
  if number < 0 && songs.include?(input)
    index = songs.index(input)
    puts "Playing #{songs[index]}"
  elsif number >= 0 && songs[number] != nil
    puts "Playing #{songs[number]}"
  else
    puts "Invalid input, please try again"
  end
end


def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  input = gets.strip
  puts "Please enter a command:"
  help
  case input
  when "help"
    help
  when "list"
    list(songs)
  when "play"
    play(songs)
  when "exit"
    exit_jukebox
    exit
  end
end

  

