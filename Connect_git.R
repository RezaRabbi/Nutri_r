# #######################################################
#### connect rstudio to github #########################
# #Step 1: Install & Verify GitBefore linking RStudio, make sure Git is installed on your computer.Open RStudio.Click on the Terminal tab (next to the Console tab).   Type the following command and press Enter:Bashgit --version
# Result:If it prints a version number (e.g., git version 2.x.x), proceed to Step 2.If it returns an error or command not found, download and run the installer from git-scm.com, then restart RStudio.
# 
# Step 2: Configure Git with Your User DetailsTell Git who you are so your commits show your identity on GitHub.   In the RStudio Console, run:Rinstall.packages("usethis")
# library(usethis)
# 
# # Replace with your actual GitHub username and account email
# use_git_config(
#   user.name = "YourGitHubUsername",
#   user.email = "your.email@example.com"
# )
# Verification: To check if it worked, run usethis::git_sitrep(). It will print your global Git user settings.
# 
# 
# Step 3: Generate a Personal Access Token (PAT)GitHub requires a Personal Access Token instead of your regular password for local connections.   In the RStudio Console, run:Rusethis::create_github_token()
# This opens your web browser directly to GitHub's token page.In the browser window:Note/Description: Set to RStudio.Expiration: Set to 90 days or preferred duration.Scopes: Leave the pre-checked options (e.g., repo, user, workflow) as default.Scroll to the bottom and click Generate token.Copy the token (a string starting with ghp_...). Keep this browser tab open—you cannot view this key again once you navigate away!
# 
# 
# Step 4: Store Your Credentials in RStudioSave your token securely into your computer’s credential manager.   In the RStudio Console, run:Rinstall.packages("gitcreds")
# gitcreds::gitcreds_set()
# When prompted in the console:Paste your copied Personal Access Token.Press Enter.Verification: Run usethis::git_sitrep() again. Under GitHub, you should now see Personal access token: <discovered>.
# 
# Step 5: Test the Connection (Clone or Push)Option A: Clone an existing GitHub repository into RStudioCreate a repository on github.com (or open an existing one) and copy its HTTPS URL.   In RStudio, go to File > New Project > Version Control > Git.   Paste the repository URL, choose a local directory, and click Create Project.
# Option B: Turn an existing local R project into a GitHub repoIf you already have a local R project open, run these two commands in your RStudio Console:Rusethis::use_git()        # Initializes local Git repo
# usethis::use_github()     # Creates and links a new repo on GitHub
# 
# 
#Step 6: Verify Your WorkflowCreate a new R script or modify a file in your project, then Save it.   Look at the top-right pane in RStudio and click the Git tab.   Check the Staged box next to your file.   Click Commit, type a brief message (e.g., "Initial commit"), and click Commit.   Click the green Push arrow (upward pointing).   Refresh your repository page on GitHub.com to verify your changes are live.   


## refine code for connect github to rstudio
library(usethis)
use_git_config(
  user.name= "RezaRabbi",
  user.email="rshant@isrt.ac.bd"
)

usethis::create_github_token()

gitcreds::gitcreds_set()


