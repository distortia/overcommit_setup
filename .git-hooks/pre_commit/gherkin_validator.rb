module Overcommit
  module Hook
    module PreCommit
      # Gherkin Validator that makes sure all the gherkin is parsable and doesnt cause issues
      class GherkinValidator < Base
        def run
          puts 'Starting Gherking Validation'
          status = system('bundle', 'exec', 'cucumber', '-t', '@gherkin_validation')
          puts 'Gherkin Validated' if status
          status ? :pass : :fail
        end
      end
    end
  end
end