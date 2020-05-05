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

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
  songs.each_with_index do |item, index|
    puts "#{index + 1}. #{item}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  user_input = gets.strip
  index = user_input.to_i
  if (1..songs.length).include?(index)
    puts "Playing #{songs[index - 1]}"
  elsif index == 0
    puts (songs.include?(user_input) ? "Playing #{user_input}" : "Invalid input, please try again")
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  puts "Please enter a command:"
  input = gets.strip
  if input == "exit"
    exit_jukebox
  elsif input == "list"
    list(songs)
  elsif input == "help"
    help
  elsif input == "play"
    play(songs)
  end
end
