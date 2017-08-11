# Rubocop Config

### Purpose

The purpose of this repo is to have a standardized code quality process.

We use [overcommit](https://github.com/brigade/overcommit) and [rubocop](https://github.com/bbatsov/rubocop) to sure that new code being added to the project maintains the common vision of coding standards.

### Requirements

* Rubocop - latest(0.49.x) - The Rubocop project has been renaming their cops and can cause conflicts with older versions.
* Overcommit - latest(0.39.x)

### Initial Setup

To get setup with overcommit please run the following:

* `gem install rubocop`
* `gem install overcommit`
* `overcommit --install`
* Copy over the files in this repo in to the root of your project
* `rm ./.git/hooks/commit-msg`
* `mv ./.git/hooks/old-hooks/commit-msg ./.git/hooks/` | __note__: the setup script stops after this command
* `overcommit --sign` | __note__: any changes made to the overcommit.yml needs to run `overcommit --sign` before new changes to be taken. 

You can now `git add` your files and `git commit -m` your message


### Existing setup

Once the initial setup has been completed and pushed to your repo you can run the following script `ruby bin/overcommit_setup.rb`

### Git hooks

* Rubocop - using the provided style guide - please tweak to your projects needs
* Gherkin Validator - Simple command to parse the gherkin and make sure there are no formatting issues.

### Contibuting

* Fork the repo
* Make your changes on your fork
* Submit merge request