# 1. Definición de variables básicas
$containerName = "BC28-ES"
$auth = "NavUserPassword"
# 2. Credenciales fijas de desarrollo para evitar conflictos con Windows
$password = ConvertTo-SecureString "<TuContraseñaSegura>" -AsPlainText -Force
$credential = New-Object System.Management.Automation.PSCredential("admin", $password)
# 3. Obtención del artefacto oficial de Microsoft (Versión 28 - España)
$artifactUrl = Get-BCArtifactUrl -version "28.0" -country "es" -select "latest"
# 4. Creación y ejecución del contenedor
New-BcContainer `-containerName $containerName `-artifactUrl $artifactUrl `-auth $auth `-credential $credential `-accept_eula `-updateHosts