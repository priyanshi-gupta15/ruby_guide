✅ Files You Should Push to GitHub
These are essential for sharing your gem or collaborating:

✅ File/Folder	Purpose
lib/	  = Your actual gem code goes here (main folder!)
test/ or spec/	 = Your gem's tests
.gitignore	= Keeps your repo clean by ignoring unwanted files
.rubocop.yml = 	Linting rules (optional but recommended)

Gemfile =	Defines development dependencies
README.md =	Instructions and usage for your gem
Rakefile	= For automation tasks like testing/building gem
hello_gem.gemspec =	Metadata/config for your gem
LICENSE.txt	= Your open-source license (e.g., MIT)
CHANGELOG.md =	(Optional) Describes changes per version
CODE_OF_CONDUCT.md	 = (Optional) Contributor rules and behavior
sig/ =	(Optional) If using Sorbet type signatures


✅ Push all these files — they make your gem complete, professional, and usable by others.

🚫 Files/Folders You Should NOT Push
These are either auto-generated or environment-specific:

❌ File/Folder	Why to Ignore
pkg/	Gem build artifacts (like .gem files)
.bundle/	Local bundler configs
.env or .env.local	Environment secrets
tmp/	Temp files
.DS_Store	macOS system file
*.log	Log files


Add them to your .gitignore like this:

# .gitignore
pkg/
.bundle/
*.log
*.gem
.env


🧠 Bonus Tip: Always push .gemspec, not .gem
The .gemspec file describes your gem.

The .gem file is a packaged version built by gem build.

You shouldn’t push .gem files to GitHub — they go to RubyGems.org when you publish.

