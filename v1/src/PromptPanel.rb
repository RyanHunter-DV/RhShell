class PromptPanel
	## init, 
	#
	def initialize ##{{{
		#TODO
	end ##}}}

	## processKey(key), 
	# arg: key is a symbol defined by UserInput, like: :ArrowRight, :Enter ...
	# return nothing.
	# steps:
	# - translate the input key with a message, like: processKeyArrowRight...
	# - call different messages according to input key, detailed actions will be defined
	# at those detailed process actions
	def processKey(key=:NormalKey,info='') ##{{{
		message = "processKey#{key}".to_sym;
		self.send(message,info);
	end ##}}}

	private

	## internal different key processing actions {{{
	## processKeyNormal(char), to process a normal command char
	# - append to current command
	# - search history with the new user command as pattern.
	# - build a snippet object, which will have all matched command hints and 
	# the command index to show the calling ordering of the command
	def processKeyNormal(char) ##{{{
		#TODO
		self.appendCurrentCommand(char);
		# @snippet object is a popup menu object that will be used by
		# the ScreenPanel object to display all completion items.
		# @currentCommand is current command entered by user, also will be
		# used and display by ScreenPanel.
		@snippet = @history.searchAll(@currentCommand);
	end ##}}}

	## processKeyEnter(), call to execute the command
	# TODO, need think a way on how to execute the command and display it
	# on current screen immediately.
	def processKeyEnter() ##{{{
		#TODO
	end ##}}}

	#TODO, more key actions
	##}}}
	
end
