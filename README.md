Resque-pool is a great gem, but is no longer actively maintained. This patch is necessary if you want to take advantage of Resque's updated term signal handling. Set TERM_CHILD and RESQUE_TERM_TIMEOUT to gracefully shutdown workers on redeploy and dyno re-scale.

