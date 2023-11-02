# Docker Configuration For Laravel

This is my standard docker configuration for local development with Laravel.

## Getting Started

Do a standard installation of Laravel then copy the .docker directory to the Laravel root. Then copy the Makefile to the Laravel root.

The make file contains a few helpers that make it simple to manage the application. 

For testing copy the .env.gh to your Laravel root.

This environment is set up to have a Postgres database and PHP 8.2.
Quick setup (Just set the `LARAVEL_DIRECTORY` var first):

```bash
LARAVEL_DIRECTORY=
cp -R .docker $LARAVEL_DIRECTORY/.
cp -R .github-actions $LARAVEL_DIRECTORY/.github
cp -R .vscode $LARAVEL_DIRECTORY/.
cp .env-gh $LARAVEL_DIRECTORY/.
cp Makefile $LARAVEL_DIRECTORY/.
```

## GitHub actions

Copy the .github-actions directory to the root of the Laravel installation to .github and this will give you:
- Linting with Pint
- AI PR reviews with Codium
- Testing with a real DB.

## Nova and Spark

In order to build the composer dependencies a nova and spark authentication step is present. Comment them out if not needed. If they are needed be sure to set the `SPARK_USERNAME` `SPARK_PASSWORD` `NOVA_USERNAME` and `NOVA_PASSWORD` secrets.


## AI PR Reviews

In order to get this working set the secret for the open AI key. `OPENAI_KEY`

## VSCode

For VS code settings copy over the .vscode directory.