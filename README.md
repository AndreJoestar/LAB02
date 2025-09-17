# Integrantes group 5
- *JEREMY ZUMAETA RODRIGUEZ*
- *JOEL EUSTAQUIO AVILA*
- *JUNIOR VERGARA LOPEZ*
# LAB02 - Entorno dev con terraform y docker provider

Este proyecto despliega un ambiente de desarrollo compuesto por:
- *3 apps de nginx* (nginx1.tf, nginx2.tf, nginx3.tf)
- *base de datos PostgreSQL* (postgres.tf)
- *Redis* como sistema de caché (redis.tf)
- *variables* (variables.tfvar)
- proxy expuesto 
## 📋 Requisitos

- [Terraform] 
sudo snap install terraform --classic 
- *Para verificar que tienes terraform se usa este comando**
terraform --version

  En Ubuntu:
  ```bash
  sudo apt-get update && sudo apt-get install -y terraform