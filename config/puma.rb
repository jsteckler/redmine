# Configura el puerto en el que Puma escuchará las solicitudes.
port ENV.fetch("PORT") { 3001 }

# Configura el número mínimo y máximo de hilos para Puma.
threads_count = ENV.fetch("RAILS_MAX_THREADS") { 5 }
threads threads_count, threads_count

# Configura el entorno de la aplicación.
environment ENV.fetch("RAILS_ENV") { "development" }

# Configura el PID file.
pidfile ENV.fetch("PIDFILE") { "tmp/pids/server.pid" }

# Configura el número de workers (solo en producción).
workers ENV.fetch("WEB_CONCURRENCY") { 2 }

# Usa `preload_app!` para cargar la aplicación antes de bifurcar los workers.
preload_app!

# Permite la conexión por medio de activerecord para cada worker.
on_worker_boot do
  ActiveRecord::Base.establish_connection if defined?(ActiveRecord)
end

# Permite controlar Puma con pumactl.
plugin :tmp_restart
