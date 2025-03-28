defmodule PhoenixUi.Promo do
  alias PhoenixUi.Promo.Recipient

  def change_recipient(%Recipient{} = recipient, attrs \\ %{}) do
    Recipient.changeset(recipient, attrs)
  end

  def send_promo(_recipient, _promo) do
    # send promo
    {:ok, %Recipient{}}
  end
end
