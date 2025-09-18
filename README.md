# Integrantes group 5
- JEREMY ZUMAETA RODRIGUEZ
- JOEL EUSTAQUIO AVILA
- JUNIOR VERGARA LOPEZ
# LAB02 - Entorno dev con terraform y docker provider

Este proyecto despliega un ambiente de desarrollo compuesto por:

*Nginx App1, App2 y App3:*  
  Son básicamente *servidores web* que devuelven páginas cuando un usuario entra desde el navegador.  
  Cada uno trabaja en un puerto distinto (3001, 3002, 3003) y nos sirven para probar cómo funciona cuando tenemos varias instancias de una misma aplicación (algo muy común en producción para que no dependa todo de un solo servidor).

- *Proxy Nginx:*  
  Este es como el *puente de entrada*. En lugar de que el usuario vaya directo a un servidor, entra al proxy y él se encarga de decidir a cuál de los 3 Nginx mandar la petición.  
  Eso se llama *balanceo de carga* y es importante porque reparte el trabajo entre los servidores y evita que uno se sature.

- base de datos PostgreSQL (postgres.tf)
- Redis como sistema de caché (redis.tf)
- variables (variables.tfvar)
- proxy expuesto 
## 📋 Requisitos

- Terraform
  sudo snap install terraform --classic 
  - Para verificar que tienes terraform se usa este comando 
  terraform --version

- Ansible
    Es una herramienta de automatización que nos ayuda a configurar y gestionar servidores de forma sencilla.
    Su ventaja es que no necesita instalar un agente en cada máquina, solo funciona mediante SSH y unos archivos de configuración llamados playbooks.

  - Docker
Es la plataforma que usamos para crear y administrar contenedores ejemlo nginx .

 -  Proxy  
El proxy funciona como un intermediario entre los usuarios y las aplicaciones esto hace que todo el sistema sea mas organizado.

-  Nginx en este caso actua como balanceador de carga, distribuyendo tráfico entre nginx_app1, nginx_app2 y nginx_app3.

Extensiones usadas: 
- HashiCor Terraform
- ANSIBLE
- Container Tools
- Nginx Configuration 
- YAML