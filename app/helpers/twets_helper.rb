module TwetsHelper
    
  def format_mentions(twet_content)
    twet_content.gsub(/(?<start>[>|\s])@(?<username>(\w+))/, '\k<start><a href="/\k<username>">@\k<username></a>')
  end   
  
end
