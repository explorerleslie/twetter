module TwetsHelper
    
  def format_mentions(twet)
    twet.content.gsub(/(?<start>[>|\s])@(?<username>(\w+))/, '\k<start><a href="/\k<username>">@\k<username></a>')
    
    # twet_split = twet.content.split(" ")
    # twet_split.each do |word|
    #   if word == /@(\S+)/
    #     link_to('@' + word, word)
    #   end
    # twet_split.join(" ")
    
  end   
  
end
