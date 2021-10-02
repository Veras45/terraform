Para usar na Digital ocean, faca o clone para sua maquina. 

Edite sua chave token, gere ela na aba API da digital oceann e cole no campo das variaveis 

volte ao termina e execute um 

terraform init 

com esse commando ele vai criar conforme as especificacoes do codigo caso queira mais CPU ou memoria ou mais recursos altere no codigo - voce tambem pode alterar para um name de sua preferencia. 

 terraform plan 
ele vai te mostrar tudo que vai ser executado 


terraform apply 
ele vai aplicar toda a configuracao feita na sua conta de Digital ocean, ao executar e so aceitar com, "yes" 


terraform destroy 
ele vai destroir toda a infra com codigo criada. 
