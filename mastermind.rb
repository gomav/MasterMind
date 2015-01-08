Dir["./lib/*.rb"].each { |file| require file }

Cli.new($stdout).start
