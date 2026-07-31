# 3.2 Preparación de la consola de comandos
# Ejecuta los siguientes comandos en orden:

# Desbloquear la ejecución de scripts de confianza:
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope Process -Force

# Instalar el módulo oficial de Microsoft (BcContainerHelper en GitHub):
# Si solicita confirmación para instalar desde "PSGallery", presiona la letra S (Sí) y pulsa Enter.
Install-Module -Name BcContainerHelper -Force

# Forzar la carga del módulo:
Import-Module BcContainerHelper -Force