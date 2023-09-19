defmodule CMSEx do
  @moduledoc """
  Cryptographic Message Syntax parser

  Functions for parsing `CMS` and `PKCS7` file formats.
  """

  @typep content_info :: %{content: term()}
  @type signed_data :: %{encapContentInfo: %{eContent: binary()}}

  @doc "Extracts ContentInfo from a CMS file"
  @spec content_info(binary()) :: {:ok, content_info()} | {:error, term()}
  def content_info(data),
    do: :CryptographicMessageSyntax2004.decode(:ContentInfo, data)

  @doc "Extracts SignedData from a CMS file"
  @spec signed_data(content_info()) :: {:ok, signed_data()} | {:error, term()}
  def signed_data(content_info),
    do: :CryptographicMessageSyntax2004.decode(:SignedData, content_info.content)
end
