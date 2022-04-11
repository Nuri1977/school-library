require './app'

def main
  app = App.new
  app.run
  app.start_console
end

main
