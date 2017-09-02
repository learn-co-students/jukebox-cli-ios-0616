# def say_hello(name)
#   "Hi #{name}!"
# end
#
# puts "Enter your name:"
# users_name = gets.chomp
#
# puts say_hello(users_name)
songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapman - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]


def help
  puts "I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"
end


def play(songs)
    puts "Please enter a song name or number:"
    answer = gets.chomp
    num = answer.to_i

    if num > 0 && num < 9
      puts "Playing #{songs[num-1]}"
          #puts num.class
    elsif songs.include? answer
      puts "Playing #{answer}"
    else
     puts "Invalid input, please try again"
  end
end

def list(songs)
  songs.each_with_index do |x, index|
    puts "#{index + 1}. #{x}"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
    help
  loop do
  puts "Please enter a command:"
  answer = gets.chomp.downcase
  do_stuff = case answer
  when "help"
    help
  when "list"
    list(songs)
  when "play"
    play(songs)
  when "exit"
    exit_jukebox
    break
  else
    help
  end
end
end
