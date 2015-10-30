# Q0: Why is this error being thrown?

In our home_controller.rb file which controls the home page, we called the Pokemon class.  However, since we have not even instantiated a Pokemon class, let alone a Pokemon model, this results in an error.

# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *

# Question 2a: What does the following line in the help text do? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.

Capture_path(id: @pokemon) puts our params for capture path to be @pokemon. As we have defined @pokemon to be "Pokemon.find(params[:id])", we need params[:id] to be able to refer to a specific pokemon.

# Question 3: What would you name your own Pokemon?

I'd name my pokemon Pebju and have it in the shape of a large peanut and butter sandwich, growing more muscular as it evolves (maybe having cruncy peanut butter filling at max level?!).

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?

# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.

# Give us feedback on the project and decal below!

# Extra credit: Link your Heroku deployed app
