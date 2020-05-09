# Add your code here

def user_promt 
  puts "Please enter a command:"
end 

def get_input
  gets.strip; 
end

def get_correct_command(command)
  until ['help', 'list', 'play', 'exit'].include?(command) do
    #puts "Sorry, I don't know that command. Enter 'help' for a list of my commands."
    puts "Invalid input, please try again"
    user_promt;
    command = get_input; 
  end 
  command; 
end 

def help
  help_text = [
    "I accept the following commands:",
    "- help : displays this help message",
    "- list : displays a list of songs you can play",
    "- play : lets you choose a song to play",
    "- exit : exits this program",
  ]
  #puts help_text; 
  help_text.length.times { |i| puts help_text[i] }; 
end

def list(songs)
  songs.each_with_index { |song, i| 
    puts "#{i+ 1}. #{song}"
  }
end

def play(songs)
  puts "Please enter a song name or number:"
  input = get_input; 
  song_count = (1..songs.length).to_a;
  song_count = song_count.map(&:to_s);
  if (songs.include?(input) || song_count.include?(input))
    if songs.include?(input)
      puts "Playing #{songs[songs.find_index(input)]}"
    else 
      puts "Playing #{songs.fetch(input.to_i - 1)}"
    end 
  else 
    puts "Invalid input, please try again"
    input = get_input; 
  end 
  
end 

def exit_jukebox 
  puts "Goodbye"
end 

def command_run (command, songs)
  case 
    when 'help' === command
      help; 
    when 'list' === command 
      list(songs); 
    when 'play' === command 
      play(songs); 
    when 'exit' === command 
      exit_jukebox; 
  end
  command; 
end 

def run (songs)
  #welcome; 
  command = '';
  until command === 'exit' do 
    user_promt;
    command = get_input; 
    command = get_correct_command(command); 
    command_run(command, songs);
  end 
end

=begin 
def welcome 
  puts "Welcome to the Ruby tunes jukebox, where text is the reality and the function!"
end 

def user_promt 
  puts "Please enter a command:"
end 

def get_input
  gets.strip; 
end

def get_correct_command(command)
  until ['help', 'list', 'play', 'exit'].include?(command) do
    puts "Sorry, I don't know that command. Enter 'help' for a list of my commands."
    user_promt;
    command = get_input; 
  end 
  command; 
end 

def help_command
  help_text = [
    "I accept the following commands:",
    "- help : displays this help message",
    "- list : displays a list of songs you can play",
    "- play : lets you choose a song to play",
    "- exit : exits this program",
  ]
  puts help_text; 
end

def list_command(songs)
  songs.each_with_index { |song, i| 
    puts "#{i+ 1}. #{song}"
  }
end

def play_command(songs)
  puts "Please enter a song name or number:"
  input = get_input; 
  song_count = (1..songs.length).to_a;
  song_count = song_count.map(&:to_s);
  until (songs.include?(input) || song_count.include?(input) || input == 'exit') do
    puts "Invalid input, please try again, or 'exit'"
    input = get_input; 
  end 
  if songs.include?(input) 
    puts "Playing #{songs[songs.find_index(input)]}"
  elseif input == 'exit'
    puts "Leaving play command"
  else 
    puts "Playing #{songs.fetch(input.to_i - 1)}"
  end 
end 

def exit_command 
  puts "Goodbye"
end 

def command_run (command, songs)
  case 
    when 'help' === command
      help_command; 
    when 'list' === command 
      list_command(songs); 
    when 'play' === command 
      play_command(songs); 
    when 'exit' === command 
      exit_command; 
  end
  command; 
end 

def run (songs)
  welcome; 
  command = '';
  until command === 'exit' do 
    user_promt;
    command = get_input; 
    command = get_correct_command(command); 
    command_run(command, songs);
  end 
end 
=end 