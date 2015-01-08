Dir["./lib/*.rb"].each { |file| require file }

Runner.new($stdout).start
