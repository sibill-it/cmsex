defmodule CMSEx do
  @moduledoc """
  Cryptographic Message Syntax parser

  Functions for parsing `CMS` and `PKCS7` formats.
  """

  @type content_info :: %{content: term()}
  @type signed_data :: %{encapContentInfo: %{eContent: binary()}}

  @doc "Extracts `t:content_info/0` from CMS data"
  @spec content_info(binary()) :: {:ok, content_info()} | {:error, term()}
  def content_info(data),
    do: :CryptographicMessageSyntax2004.decode(:ContentInfo, data)

  @doc "Extracts `t:signed_data/0` from `t:content_info/0`"
  @spec signed_data(content_info()) :: {:ok, signed_data()} | {:error, term()}
  def signed_data(content_info),
    do: :CryptographicMessageSyntax2004.decode(:SignedData, content_info.content)
end
