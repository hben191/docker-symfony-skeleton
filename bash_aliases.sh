# Create new Symfony Project
alias docker-sf-init='docker exec -it php-fpm symfony new . --no-git'

# Symfony Console
alias docker-sf='docker exec -it php-fpm php bin/console'

# Composer
alias docker-composer='docker exec -it php-fpm composer'

# Stan
alias docker-stan='docker exec -it php-fpm vendor/bin/phpstan analyse'

# PHP Unit
alias docker-test='docker exec -it php-fpm bin/phpunit'