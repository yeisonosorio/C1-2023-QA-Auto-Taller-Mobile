Feature: Iniciar sesion en la aplicacion myApp
  yo como usuario de la app movil
  quiero iniciar session para poder usar la app
  para poder usar los servicios de la app


  @IniciarSesion
  Scenario Outline: Iniciar sesion
    Given el usuario esta en la pagina de inicio
    When el usuario envia los campos de iniciar sesion <correo>, <password>
    Then el usuario debe ver un <mensaje>
    Examples:
      | correo  | password     | mensaje                      |
      | "alice" | "mypassword" | "You are logged in as alice" |
