
#PRACTICE
#asks for user's names and greets user
#def say_hello(name)
#  "Hi #{name}!"
#end
#puts "Enter your name"
#users_name = gets.strip
#puts say_hello(users_name)


#JUKEBOX
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



#the help method
def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end



#the list method
def list(songs)
  songs.each_with_index do |song, idx|
    puts "#{idx + 1}. #{song}"
  end
end



#the play method
def play(songs)
  puts "Please enter a song name or number:"
  selection = gets.strip
    songs.each_with_index do |song, idx|
      if selection == song || selection == (idx + 1).to_s
        puts "Playing #{song}"
        return song
      else
      end
    end
      puts "Invalid input, please try again"
  end



#the exit jukebox method
def exit_jukebox
  puts "Goodbye"
end



#the run method (exit, help, list, play)
def run(songs)
  puts "Please enter a command:"
  input_command = gets.strip
  
  while input_command != "exit" do
    if input_command == 'help'
      help
    elsif input_command == 'list'
      list(songs)
    elsif input_command == 'play'
      play(songs)
    else
      puts "invalid command"
    end
    puts "Please enter a command:"
    input_command = gets.strip
  end
  exit_jukebox
end  




