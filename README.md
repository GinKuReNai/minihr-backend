# minihr-backend

This is the api for a simple job posting service.

Companies can post job openings, and job seekers can apply for those openings.

## Libraries

We use [go-task/tap/go-task](https://taskfile.dev/) as the task runner.
For more details, please refer to the documentation.

## migrations

We use [pressly/goose](https://github.com/pressly/goose) for database migrations.
Follow the steps below to perform migrations on the database.

### Creating a Table / Column

Run `goose create create_some_table sql` in the `internal/infrastructure/migrations` directory.

### Applying a Table / Column

Run `task goose-up` to apply the migrations.

### Rollback

Run `task goose-down` to rollback the migrations.

## OpenAPI

The OpenAPI definition file is located under the `docs` directory.

After starting the local environment with Docker Compose,
you can view the Swagger UI by accessing `localhost:9000`.
