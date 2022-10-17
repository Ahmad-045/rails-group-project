# frozen_string_literal: true

# lib/tasks/kill_postgres_connections.rake
# task kill_postgres_connections: :environment do
#   sh = <<~EOF
#     ps xa \
#       | grep postgres: \
#       | grep #{Rails.configuration.database_configuration[Rails.env]['database']} \
#       | grep -v grep \
#       | awk '{print $1}' \
#       | sudo xargs kill
#   EOF
#   puts `#{sh}`
# end

# task "db:drop" => :kill_postgres_connections
