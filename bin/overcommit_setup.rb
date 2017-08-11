puts 'Installing rubocop gem...'
`gem install rubocop`
puts 'Installing overcommit gem...'
`gem install overcommit`
puts 'Running "overcommit --install"...'
`overcommit --install`
puts 'Removing commit-msg from git hooks...'
`rm ./.git/hooks/commit-msg`
puts 'Moving old commit message file back into git hooks...'
`mv ./.git/hooks/old-hooks/commit-msg ./.git/hooks/`
puts 'Signing overcommit...'
`overcommit --sign`
puts 'Finished.'