#
class Core
	## init, the basic constructor, to create other sub objects
	def init ##{{{
		#TODO, need declare following attributes.
		@ui = UserInputs.new();
		@prompt=PromptPanel.new();
		@screen=ScreenPanel.new();
	end ##}}}

	## run, called by main shell,
	# - invoke and execute actions by calling ohter object's actions.
	# - catch exceptions, for v1, just to ignore the signal interrupt exception.
	def run ##{{{
		begin
			key = @ui.readNextkey();
			@prompt.processKey(key);
			@screen.render(@prompt);
		#TODO, following code is not correct, need investigate how to ignore the
			# interrupt signal by this tool.
		rescue Interrupt => e
			retry;
		end
	end ##}}}
end
