class HelloWorldJob < ApplicationJob
	queue_as :default

	def perform(arg)
		puts "#{arg}"
	end
end
