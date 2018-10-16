Resque-pool is a great gem, but is no longer actively maintained. This patch is necessary if you want to take advantage of Resque's updated term signal handling. heroku-resque-pool fixes a bug that caused resque to error when RESQUE_TERM_TIMEOUT was set. 

It further includes patches from the gem [resque-heroku-signals](https://github.com/iloveitaly/resque-heroku-signals), which account for Heroku's practice of sending a SIGTERM to both parent *and* child processes.

To use, `gem install heroku-resque-pool` or include it in your gemfile and bundle. Set the environment variables RESQUE_PRE_SHUTDOWN_TIMEOUT, RESQUE_TERM_TIMEOUT, and INTERVAL to the desired values; and set TERM_CHILD to 1.

Beyond that, usage matches the gem this forks and patches, [resque-pool](https://github.com/nevans/resque-pool).