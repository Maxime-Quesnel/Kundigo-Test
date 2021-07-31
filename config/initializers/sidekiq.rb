Sidekiq.default_worker_options = { retry: false }

Sidekiq::Cron::Job.create(name: 'Remind User confirm command', cron: "* * * * *", class: 'ConfirmCommandJob')
