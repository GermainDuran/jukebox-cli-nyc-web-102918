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
  
  puts "I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"

end 

def list(songs)
  songs.each_with_index do |song,index|
    puts "#{index + 1}. #{song}"
  end
end

def play(songs)
  list(songs)
  puts
  puts "Enter song name or number"
  song_pick = gets.chomp.downcase
  # songs.each_with_index do |song,index|
    if songs.include?(song_pick) 
      puts "Now playing song #{song_pick}"
    elsif songs[song_pick.to_i - 1] 
      puts "Now playing #{songs[song_pick.to_i - 1]}"
    else
      puts "Invalid input. Please try again!"
    end
end
