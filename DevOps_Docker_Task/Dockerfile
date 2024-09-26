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

# Expose the port the application will run on
EXPOSE 3000

#ENV RAILS_ENV=production

# Run the command to start the application when the container launches
CMD  ["rails", "server", "-b", "0.0.0.0"]

#FROM postgres