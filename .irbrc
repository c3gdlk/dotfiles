%w{rubygems wirble hirb}.each do |lib| 
  begin 
    require lib 
  rescue LoadError => err
     $stderr.puts "Couldn't load #{lib}: #{err}"
  end
end

%w{init colorize}.each { |str| Wirble.send(str) }

Hirb.enable if defined? Hirb

