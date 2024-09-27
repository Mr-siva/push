# Use the official Ruby image as a base
FROM ruby:3.3.0

# Set the working directory to /app
WORKDIR /app

# Copy the Gemfile and Gemfile.lock into the container
COPY Gemfile* ./

# Install the dependencies
RUN bundle install

# Copy the application code into the container
COPY . .

# Install PostgreSQL and Redis
RUN apt-get update && apt-get install -y postgresql postgresql-contrib redis-server

# Set environment variables
ENV RAILS_ENV=production
ENV DATABASE_URL=postgres://postgres:postgres@localhost:5432/postgres
ENV REDIS_URL=redis://localhost:6379/0
ENV SECRET_KEY_BASE=9afcd0b72728ffdf4516a0bc8573dbbb74820b18f417c7e1e2fd29ed35a91a752385a1c2aaf15a4ef6d7080d4849da5e2bfb4e4e63a646f6ab097feddc501776

# Expose the ports
EXPOSE 3000 5432 6379

# Start PostgreSQL, Redis, and the Rails server
CMD ["bash", "-c", "service postgresql start && service redis-server start && rails server -b 0.0.0.0"]
