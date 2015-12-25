@moduledoc """
A schema is a keyword list which represents how to map, transform, and validate
configuration values parsed from the .conf file. The following is an explanation of
each key in the schema definition in order of appearance, and how to use them.

## Import

A list of application names (as atoms), which represent apps to load modules from
which you can then reference in your schema definition. This is how you import your
own custom Validator/Transform modules, or general utility modules for use in
validator/transform functions in the schema. For example, if you have an application
`:foo` which contains a custom Transform module, you would add it to your schema like so:

`[ import: [:foo], ..., transforms: ["myapp.some.setting": MyApp.SomeTransform]]`

## Extends

A list of application names (as atoms), which contain schemas that you want to extend
with this schema. By extending a schema, you effectively re-use definitions in the
extended schema. You may also override definitions from the extended schema by redefining them
in the extending schema. You use `:extends` like so:

`[ extends: [:foo], ... ]`

## Mappings

Mappings define how to interpret settings in the .conf when they are translated to
runtime configuration. They also define how the .conf will be generated, things like
documention, @see references, example values, etc.

See the moduledoc for `Conform.Schema.Mapping` for more details.

## Transforms

Transforms are custom functions which are executed to build the value which will be
stored at the path defined by the key. Transforms have access to the current config
state via the `Conform.Conf` module, and can use that to build complex configuration
from a combination of other config values.

See the moduledoc for `Conform.Schema.Transform` for more details and examples.

## Validators

Validators are simple functions which take two arguments, the value to be validated,
and arguments provided to the validator (used only by custom validators). A validator
checks the value, and returns `:ok` if it is valid, `{:warn, message}` if it is valid,
but should be brought to the users attention, or `{:error, message}` if it is invalid.

See the moduledoc for `Conform.Schema.Validator` for more details and examples.
"""
[
  extends: [],
  import: [],
  mappings: [
    "treeshare.Elixir.Treeshare.Endpoint.url.host": [
      commented: false,
      datatype: :binary,
      default: "sharecodewith.us",
      doc: "Provide documentation for treeshare.Elixir.Treeshare.Endpoint.url.host here.",
      hidden: false,
      to: "treeshare.Elixir.Treeshare.Endpoint.url.host"
    ],
    "treeshare.Elixir.Treeshare.Endpoint.url.port": [
      commented: false,
      datatype: :integer,
      default: 8001,
      doc: "Provide documentation for treeshare.Elixir.Treeshare.Endpoint.url.port here.",
      hidden: false,
      to: "treeshare.Elixir.Treeshare.Endpoint.url.port"
    ],
    "treeshare.Elixir.Treeshare.Endpoint.root": [
      commented: false,
      datatype: :binary,
      default: "/home/brandon/apps/sharecodewithus",
      doc: "Provide documentation for treeshare.Elixir.Treeshare.Endpoint.root here.",
      hidden: false,
      to: "treeshare.Elixir.Treeshare.Endpoint.root"
    ],
    "treeshare.Elixir.Treeshare.Endpoint.secret_key_base": [
      commented: false,
      datatype: :binary,
      default: "qfxJ0/S0yXHCOfyUlbYIix4zPRGf5SJJr3x+z/J7lNF62dIQm1mb7CgwVkMb8BFa",
      doc: "Provide documentation for treeshare.Elixir.Treeshare.Endpoint.secret_key_base here.",
      hidden: false,
      to: "treeshare.Elixir.Treeshare.Endpoint.secret_key_base"
    ],
    "treeshare.Elixir.Treeshare.Endpoint.render_errors.accepts": [
      commented: false,
      datatype: [
        list: :binary
      ],
      default: [
        "html",
        "json"
      ],
      doc: "Provide documentation for treeshare.Elixir.Treeshare.Endpoint.render_errors.accepts here.",
      hidden: false,
      to: "treeshare.Elixir.Treeshare.Endpoint.render_errors.accepts"
    ],
    "treeshare.Elixir.Treeshare.Endpoint.pubsub.name": [
      commented: false,
      datatype: :atom,
      default: Treeshare.PubSub,
      doc: "Provide documentation for treeshare.Elixir.Treeshare.Endpoint.pubsub.name here.",
      hidden: false,
      to: "treeshare.Elixir.Treeshare.Endpoint.pubsub.name"
    ],
    "treeshare.Elixir.Treeshare.Endpoint.pubsub.adapter": [
      commented: false,
      datatype: :atom,
      default: Phoenix.PubSub.PG2,
      doc: "Provide documentation for treeshare.Elixir.Treeshare.Endpoint.pubsub.adapter here.",
      hidden: false,
      to: "treeshare.Elixir.Treeshare.Endpoint.pubsub.adapter"
    ],
    "treeshare.Elixir.Treeshare.Endpoint.http.port": [
      commented: false,
      datatype: {:atom, :binary},
      default: {:system, "PORT"},
      doc: "Provide documentation for treeshare.Elixir.Treeshare.Endpoint.http.port here.",
      hidden: false,
      to: "treeshare.Elixir.Treeshare.Endpoint.http.port"
    ],
    "treeshare.Elixir.Treeshare.Endpoint.cache_static_manifest": [
      commented: false,
      datatype: :binary,
      default: "priv/static/manifest.json",
      doc: "Provide documentation for treeshare.Elixir.Treeshare.Endpoint.cache_static_manifest here.",
      hidden: false,
      to: "treeshare.Elixir.Treeshare.Endpoint.cache_static_manifest"
    ],
    "treeshare.Elixir.Treeshare.Endpoint.server": [
      commented: false,
      datatype: :atom,
      default: true,
      doc: "Provide documentation for treeshare.Elixir.Treeshare.Endpoint.server here.",
      hidden: false,
      to: "treeshare.Elixir.Treeshare.Endpoint.server"
    ],
    "treeshare.Elixir.Treeshare.Repo.adapter": [
      commented: false,
      datatype: :atom,
      default: Ecto.Adapters.Postgres,
      doc: "Provide documentation for treeshare.Elixir.Treeshare.Repo.adapter here.",
      hidden: false,
      to: "treeshare.Elixir.Treeshare.Repo.adapter"
    ],
    "treeshare.Elixir.Treeshare.Repo.username": [
      commented: false,
      datatype: :binary,
      default: "sharecodewithus",
      doc: "Provide documentation for treeshare.Elixir.Treeshare.Repo.username here.",
      hidden: false,
      to: "treeshare.Elixir.Treeshare.Repo.username"
    ],
    "treeshare.Elixir.Treeshare.Repo.password": [
      commented: false,
      datatype: :binary,
      default: "5h4r1ng15c4r1ng",
      doc: "Provide documentation for treeshare.Elixir.Treeshare.Repo.password here.",
      hidden: false,
      to: "treeshare.Elixir.Treeshare.Repo.password"
    ],
    "treeshare.Elixir.Treeshare.Repo.database": [
      commented: false,
      datatype: :binary,
      default: "sharecodewithus",
      doc: "Provide documentation for treeshare.Elixir.Treeshare.Repo.database here.",
      hidden: false,
      to: "treeshare.Elixir.Treeshare.Repo.database"
    ],
    "treeshare.Elixir.Treeshare.Repo.pool_size": [
      commented: false,
      datatype: :integer,
      default: 20,
      doc: "Provide documentation for treeshare.Elixir.Treeshare.Repo.pool_size here.",
      hidden: false,
      to: "treeshare.Elixir.Treeshare.Repo.pool_size"
    ],
    "logger.console.format": [
      commented: false,
      datatype: :binary,
      default: """
      $time $metadata[$level] $message
      """,
      doc: "Provide documentation for logger.console.format here.",
      hidden: false,
      to: "logger.console.format"
    ],
    "logger.console.metadata": [
      commented: false,
      datatype: [
        list: :atom
      ],
      default: [
        :request_id
      ],
      doc: "Provide documentation for logger.console.metadata here.",
      hidden: false,
      to: "logger.console.metadata"
    ],
    "logger.level": [
      commented: false,
      datatype: :atom,
      default: :info,
      doc: "Provide documentation for logger.level here.",
      hidden: false,
      to: "logger.level"
    ],
    "phoenix.generators.migration": [
      commented: false,
      datatype: :atom,
      default: true,
      doc: "Provide documentation for phoenix.generators.migration here.",
      hidden: false,
      to: "phoenix.generators.migration"
    ],
    "phoenix.generators.binary_id": [
      commented: false,
      datatype: :atom,
      default: false,
      doc: "Provide documentation for phoenix.generators.binary_id here.",
      hidden: false,
      to: "phoenix.generators.binary_id"
    ]
  ],
  transforms: [],
  validators: []
]