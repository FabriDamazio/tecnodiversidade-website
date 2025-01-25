defmodule Tecnodiversidade.Accounts.UserNotifier do
  import Swoosh.Email

  alias Tecnodiversidade.Mailer

  # Delivers the email using the application mailer.
  defp deliver(recipient, subject, body) do
    email =
      new()
      |> to(recipient)
      |> from({"Tecnodiversidade", "contato@tecnodiversidade.com"})
      |> subject(subject)
      |> text_body(body)

    with {:ok, _metadata} <- Mailer.deliver(email) do
      {:ok, email}
    end
  end

  @doc """
  Deliver instructions to confirm account.
  """
  def deliver_confirmation_instructions(user, url) do
    deliver(user.email, "Instruções de Confirmação", """

    ==============================

    Olá #{user.email},

    Você pode confirmar sua conta visitando o link abaixo:

    #{url}

    Se você não criou esta conta, por favor ignore este e-mail.

    ==============================
    """)
  end

  @doc """
  Deliver instructions to reset a user password.
  """
  def deliver_reset_password_instructions(user, url) do
    deliver(user.email, "Instruções para redefinição de senha", """

    ==============================

    Olá #{user.email},

    Você pode redefinir sua senha visitando o link abaixo:

    #{url}

    Se você não requisitou esta troca, por favor ignore este e-mail.

    ==============================
    """)
  end

  @doc """
  Deliver instructions to update a user email.
  """
  def deliver_update_email_instructions(user, url) do
    deliver(user.email, "Instruções para atualização do endereço do e-mail", """

    ==============================

    Olá #{user.email},

    Você pode trocar seu e-mail visitando o link abaixo:

    #{url}

    Se você não requisitou esta troca, por favor ignore este e-mail.

    ==============================
    """)
  end
end
