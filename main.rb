# frozen_string_literal: true

require_relative 'list_creator'

# Main
class Main
  def start
    a = '123'
    b = '333'
    ListCreator.new.start
  end
end

debugger
Main.new.start
