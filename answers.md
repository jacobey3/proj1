# Q0: Why is this error being thrown?

	In our home_controller.rb file which controls the home page, we called the Pokemon class.  However, since we have not even instantiated a Pokemon class, let alone a Pokemon model, this results in an error.

# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *

	The random Pokemon are appearing in the order in which they were created.  The common factor is that they have no been captured yet, i.e. their trainer_id column is nil.

# Question 2a: What does the following line in the help text do? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.

	Capture_path(id: @pokemon) puts our params for capture path to be @pokemon. As we have defined @pokemon to be "Pokemon.find(params[:id])", we need params[:id] to be able to refer to a specific pokemon.

# Question 3: What would you name your own Pokemon?

	I'd name my pokemon Pebju and have it in the shape of a large peanut and butter sandwich, growing more muscular as it evolves (maybe having cruncy peanut butter filling at max level?!).

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?

	I passed current_trainer as the argument for redirect_to.  "current_trainer" implicitly defines the path to the appropriate trainer, as redirect_to is versatile enough to handle this.  

# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.

	When we call render on anything, the default view that rails uses is layouts/application.html.erb.  The flash function uses the fact that there is built in method for every object (.errors) that can create the appopriate message.  The action that we render in applications.html.erb is "render layouts/messages" which ensures that the error message we setup with our flash command is rendered and displayed appropriately.

# Give us feedback on the project and decal below!

	I really enjoyed this project!  It was the complete fruition of all of our knowledge accumulated in the past few homework assignments put into one.  I appreciate the pacing of this class and the readily available help I can get from any of the TAs.  Best DeCal I've taken at Cal without a doubt!

# Extra credit: Link your Heroku deployed app

	https://murmuring-hollows-5209.herokuapp.com/
