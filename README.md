# Guard::PHPSpec

## Desc

**guard-phpspec** allows you to automatically run [PHPSpec][6] tests when sources
are modified. It helps with integrating test-driven development (TDD) into
your development process: Just launch guard-phpspec before you start working
and it will notify you about the status of your tests!

*Note*: Although guard-phpspec should work with any [PHP][7] version [PHPSpec][6] supports,
it has only been tested on [PHP][7] 5.3.8 and 5.4.4.

## Meta

* Isam Machlovi: <http://pwnjutsu.com> **|** <https://github.com/lsd>
* Source on GitHub: <https://github.com/lsd/guard-phpspec>
* RubyGems.org Source: <https://rubygems.org/lsd/guard-phpspec>

## Install

Please be sure to have [PHP][7], [PHPSpec][6] and [Ruby][1] installed on your machine before
you proceed with the installation.

The latest versions of [Ruby][1] come with a packages-manager called `gem`. `gem` can be used to
install various packages, including guard-phpspec.

To install guard-phpspec using gem, run the following command:

`$ gem install guard-phpspec`

but I suggest instead using Bundler/Gemfile when possible.

Update your Gemfile

    group :test do
      gem 'guard'
      gem 'guard-phpspec', '1.0.*@dev'
    gem

Then create/update the Guardfile to include PHPSpec watcher

    run `guard init phpspec` or `bundle exec guard init phpspec`

This appends initialization of "guard-phpspec" to the Guardfile.
You can manually update your Guardfile without `guard init phpspec`

      guard 'phpspec', :tests_path => 'spec', :cli => '--colors' do
        watch(%r{^.+Spec\.php$})
      end

## Validate installation with Guard::PHPSpec's own specs


If you would like to run the specs guard-phpspec comes with:

    cd `gem phpspec`
    rspec spec
    …

## Usage

Just run `guard` or `bundle exec guard` in the in root working dir (where /specs dir is)
Please read the [Guard usage documentation][3].

## Guardfile

guard-phpspec can be used with any kind of [PHP][7] projects that uses PHPSpec as
its testing framwork. Please read the [Guard documentation][3] for more information
about the Guardfile DSL.

By default, guard-phpspec will use the current working directory (pwd) to
search for tests and run them on start (if you enabled the `:all_on_start` option).

### Example PHP project

The [PHPSpec documentaion][4] uses the [Object Freezer][5] library as an example on how
to organize tests. This project uses the `Tests` directory for its tests.

An example of the Guardfile for the same project would look
something like:

    guard 'phpspec', :tests_path => 'spec', :cli => '--colors' do
      # Watch tests files
      watch(%r{^.+_?[sS]pec\.php$})

      # Watch library files and run their tests
      watch(%r{^Object/(.+)\.php}) { |m| "Tests/#{m[1]}Spec.php" }
    end

## Options

The following options can be passed to Guard::PHPSpec:

          :all_on_start => false     # Run all tests on startup.
                                     # default: true

          :all_after_pass => false  # Run all tests after changed tests pass. This ensures
                                    # that the process of making changed tests pass didn't
                                    # break something else.
                                    # default: true


          :keep_failed => false     # Remember failed tests and keep running them with
                                    # each change until they pass.
                                    # default: true


          :tests_path => 'tests'    # Relative path to the tests directory. This path
                                    # is used when running all the tests.
                                    # default: the current working directory (pwd)


          :cli => '--colors'        # The options passed to the phpunit command
                                    # when running the tests.
                                    # default: nil

## Development

* Source hosted at [GitHub/lsd](https://github.com/lsd/guard-phpspec)
* Report issues/questions/requests on [GitHub Issues](https://github.com/lsd/guard-phpspec/issues)

[1]:http://ruby-lang.org
[3]:https://github.com/guard/guard#readme
[6]:http://phpspec.net
[7]:http://php.net
