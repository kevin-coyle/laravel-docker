# Docker Configuration For Laravel

This is my standard docker configuration for local development with Laravel.

## Getting Started

Do a standard installation of laravel then copy the .docker directory to the laravel root. Then copy the Makefile to the laravel root.

The make file contains a few helpers that make it simple to manage the application. 

This environment is set up to have a postgres database and PHP 8.2.


## Github actions

Copy the .github-actions directory to the root of the laravel installation to .github and this will give you:
- Linting with Pint
- AI PR reviews with Codium
- Testing with a real DB.