# CMSEx

This library contains an Elixir library to parse the `CMS` file format as described in [RFC 5652](https://datatracker.ietf.org/doc/html/rfc5652) and related RFCs.

This includes for instance `PKCS7` files with a `.p7m` extension.

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `cmsex` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:cmsex, "~> 0.1.0"}
  ]
end
```

# Usage

Refer to the `CMSEx` module documentation.

# Development

The parser is generated from `ASN.1` specifications copied from their RFCs  using the `asn1ct` module included with OTP. The ASN.1 specs were only slightly tweaked by removing primitive type definitions, to be compatible with `asn1ct`.

The source `ASN.1` specifications are stored in `asn1/`, and the generated Erlang code  is stored in `src/`. For development purposes, the Erlang code can be regenerated by running the `mix compile.asn1` task.

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at <https://hexdocs.pm/cmsex>.
