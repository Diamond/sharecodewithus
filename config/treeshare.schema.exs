[
  mappings: [
    "treeshare.Elixir.Treeshare.Endpoint.url.host": [
      doc: "Provide documentation for treeshare.Elixir.Treeshare.Endpoint.url.host here.",
      to: "treeshare.Elixir.Treeshare.Endpoint.url.host",
      datatype: :binary,
      default: "localhost"
    ],
    "treeshare.Elixir.Treeshare.Endpoint.root": [
      doc: "Provide documentation for treeshare.Elixir.Treeshare.Endpoint.root here.",
      to: "treeshare.Elixir.Treeshare.Endpoint.root",
      datatype: :binary,
      default: "/Users/brichey/Documents/dev/phoenix/treeshare"
    ],
    "treeshare.Elixir.Treeshare.Endpoint.secret_key_base": [
      doc: "Provide documentation for treeshare.Elixir.Treeshare.Endpoint.secret_key_base here.",
      to: "treeshare.Elixir.Treeshare.Endpoint.secret_key_base",
      datatype: :binary,
      default: "AcSOSPlupyx7oCP4ZMH1ivmiUhZqAfXlMOpCiYNvRti9YfpMLu52vShMd5N9gLxq"
    ],
    "treeshare.Elixir.Treeshare.Endpoint.render_errors.accepts": [
      doc: "Provide documentation for treeshare.Elixir.Treeshare.Endpoint.render_errors.accepts here.",
      to: "treeshare.Elixir.Treeshare.Endpoint.render_errors.accepts",
      datatype: [
        list: :binary
      ],
      default: [
        "html",
        "json"
      ]
    ],
    "treeshare.Elixir.Treeshare.Endpoint.pubsub.name": [
      doc: "Provide documentation for treeshare.Elixir.Treeshare.Endpoint.pubsub.name here.",
      to: "treeshare.Elixir.Treeshare.Endpoint.pubsub.name",
      datatype: :atom,
      default: Treeshare.PubSub
    ],
    "treeshare.Elixir.Treeshare.Endpoint.pubsub.adapter": [
      doc: "Provide documentation for treeshare.Elixir.Treeshare.Endpoint.pubsub.adapter here.",
      to: "treeshare.Elixir.Treeshare.Endpoint.pubsub.adapter",
      datatype: :atom,
      default: Phoenix.PubSub.PG2
    ],
    "treeshare.Elixir.Treeshare.Endpoint.http.port": [
      doc: "Provide documentation for treeshare.Elixir.Treeshare.Endpoint.http.port here.",
      to: "treeshare.Elixir.Treeshare.Endpoint.http.port",
      datatype: :integer,
      default: 4000
    ],
    "treeshare.Elixir.Treeshare.Endpoint.debug_errors": [
      doc: "Provide documentation for treeshare.Elixir.Treeshare.Endpoint.debug_errors here.",
      to: "treeshare.Elixir.Treeshare.Endpoint.debug_errors",
      datatype: :atom,
      default: true
    ],
    "treeshare.Elixir.Treeshare.Endpoint.code_reloader": [
      doc: "Provide documentation for treeshare.Elixir.Treeshare.Endpoint.code_reloader here.",
      to: "treeshare.Elixir.Treeshare.Endpoint.code_reloader",
      datatype: :atom,
      default: true
    ],
    "treeshare.Elixir.Treeshare.Endpoint.cache_static_lookup": [
      doc: "Provide documentation for treeshare.Elixir.Treeshare.Endpoint.cache_static_lookup here.",
      to: "treeshare.Elixir.Treeshare.Endpoint.cache_static_lookup",
      datatype: :atom,
      default: false
    ],
    "treeshare.Elixir.Treeshare.Endpoint.check_origin": [
      doc: "Provide documentation for treeshare.Elixir.Treeshare.Endpoint.check_origin here.",
      to: "treeshare.Elixir.Treeshare.Endpoint.check_origin",
      datatype: :atom,
      default: false
    ],
    "treeshare.Elixir.Treeshare.Endpoint.watchers.node": [
      doc: "Provide documentation for treeshare.Elixir.Treeshare.Endpoint.watchers.node here.",
      to: "treeshare.Elixir.Treeshare.Endpoint.watchers.node",
      datatype: [
        list: :binary
      ],
      default: [
        "node_modules/brunch/bin/brunch",
        "watch",
        "--stdin"
      ]
    ],
    "treeshare.Elixir.Treeshare.Endpoint.live_reload.patterns": [
      doc: "Provide documentation for treeshare.Elixir.Treeshare.Endpoint.live_reload.patterns here.",
      to: "treeshare.Elixir.Treeshare.Endpoint.live_reload.patterns",
      datatype: [
        list: :binary
      ],
      default: [
        %{__struct__: Regex, opts: "", re_pattern: {:re_pattern, 1, 0, 0, <<69, 82, 67, 80, 166, 0, 0, 0, 0, 0, 0, 0, 81, 0, 0, 0, 255, 255, 255, 255, 255, 255, 255, 255, 112, 0, 47, 0, 0, 0, 1, 0, 0, 0, 64, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ...>>}, source: "priv/static/.*(js|css|png|jpeg|jpg|gif|svg)$"},
        %{__struct__: Regex, opts: "", re_pattern: {:re_pattern, 1, 0, 0, <<69, 82, 67, 80, 112, 0, 0, 0, 0, 0, 0, 0, 81, 0, 0, 0, 255, 255, 255, 255, 255, 255, 255, 255, 112, 0, 111, 0, 0, 0, 1, 0, 0, 0, 64, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ...>>}, source: "priv/gettext/.*(po)$"},
        %{__struct__: Regex, opts: "", re_pattern: {:re_pattern, 1, 0, 0, <<69, 82, 67, 80, 106, 0, 0, 0, 0, 0, 0, 0, 81, 0, 0, 0, 255, 255, 255, 255, 255, 255, 255, 255, 119, 0, 120, 0, 0, 0, 1, 0, 0, 0, 64, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ...>>}, source: "web/views/.*(ex)$"},
        %{__struct__: Regex, opts: "", re_pattern: {:re_pattern, 1, 0, 0, <<69, 82, 67, 80, 116, 0, 0, 0, 0, 0, 0, 0, 81, 0, 0, 0, 255, 255, 255, 255, 255, 255, 255, 255, 119, 0, 120, 0, 0, 0, 1, 0, 0, 0, 64, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ...>>}, source: "web/templates/.*(eex)$"}
      ]
    ],
    "treeshare.Elixir.Treeshare.Repo.adapter": [
      doc: "Provide documentation for treeshare.Elixir.Treeshare.Repo.adapter here.",
      to: "treeshare.Elixir.Treeshare.Repo.adapter",
      datatype: :atom,
      default: Ecto.Adapters.Postgres
    ],
    "treeshare.Elixir.Treeshare.Repo.username": [
      doc: "Provide documentation for treeshare.Elixir.Treeshare.Repo.username here.",
      to: "treeshare.Elixir.Treeshare.Repo.username",
      datatype: :binary,
      default: "postgres"
    ],
    "treeshare.Elixir.Treeshare.Repo.password": [
      doc: "Provide documentation for treeshare.Elixir.Treeshare.Repo.password here.",
      to: "treeshare.Elixir.Treeshare.Repo.password",
      datatype: :binary,
      default: "postgres"
    ],
    "treeshare.Elixir.Treeshare.Repo.database": [
      doc: "Provide documentation for treeshare.Elixir.Treeshare.Repo.database here.",
      to: "treeshare.Elixir.Treeshare.Repo.database",
      datatype: :binary,
      default: "treeshare_dev"
    ],
    "treeshare.Elixir.Treeshare.Repo.hostname": [
      doc: "Provide documentation for treeshare.Elixir.Treeshare.Repo.hostname here.",
      to: "treeshare.Elixir.Treeshare.Repo.hostname",
      datatype: :binary,
      default: "localhost"
    ],
    "treeshare.Elixir.Treeshare.Repo.pool_size": [
      doc: "Provide documentation for treeshare.Elixir.Treeshare.Repo.pool_size here.",
      to: "treeshare.Elixir.Treeshare.Repo.pool_size",
      datatype: :integer,
      default: 10
    ],
    "logger.console.format": [
      doc: "Provide documentation for logger.console.format here.",
      to: "logger.console.format",
      datatype: :binary,
      default: """
      [$level] $message
      """
    ],
    "logger.console.metadata": [
      doc: "Provide documentation for logger.console.metadata here.",
      to: "logger.console.metadata",
      datatype: [
        list: :atom
      ],
      default: [
        :request_id
      ]
    ],
    "phoenix.stacktrace_depth": [
      doc: "Provide documentation for phoenix.stacktrace_depth here.",
      to: "phoenix.stacktrace_depth",
      datatype: :integer,
      default: 20
    ],
    "phoenix.generators.migration": [
      doc: "Provide documentation for phoenix.generators.migration here.",
      to: "phoenix.generators.migration",
      datatype: :atom,
      default: true
    ],
    "phoenix.generators.binary_id": [
      doc: "Provide documentation for phoenix.generators.binary_id here.",
      to: "phoenix.generators.binary_id",
      datatype: :atom,
      default: false
    ]
  ],
  translations: [
  ]
]