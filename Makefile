lint-code-style:
	@ vendor/bin/php-cs-fixer fix --config=.php_cs.dist.php --allow-risky=yes --dry-run --stop-on-violation --diff --using-cache=no

fix-code-style:
	@ vendor/bin/php-cs-fixer fix --config=.php_cs.dist.php --allow-risky=yes --verbose --using-cache=no

analyse:
	@ vendor/bin/phpstan analyse -c phpstan.neon

testing:
	@ vendor/bin/phpunit

infection:
	@ XDEBUG_MODE=coverage vendor/bin/infection --threads=10 --show-mutations