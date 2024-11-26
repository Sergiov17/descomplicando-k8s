Estrutura recomendada:

```plaintext
projeto-aws/
│
├── main.tf          # Arquivo principal com o provider
├── variables.tf     # Declaração de todas as variáveis
├── outputs.tf       # Todos os outputs do projeto
├── vpc.tf           # Recursos relacionados à VPC
├── security.tf      # Security Groups
├── ec2.tf           # Instância EC2 e recursos relacionados
└── terraform.tfvars # Valores das variáveis (não commitar este arquivo se contiver dados sensíveis)
```

Para usar esta estrutura:

1. Crie um novo diretório e adicione todos estes arquivos
2. Modifique o terraform.tfvars com seus valores específicos
3. Execute:
```bash
terraform init
terraform plan
terraform apply
```

Benefícios desta estrutura:
- Melhor organização do código
- Mais fácil de manter e modificar
- Separação clara de responsabilidades
- Reutilização mais simples de código
- Mais fácil de versionar no git

Dicas:
- Adicione .gitignore para excluir arquivos locais do Terraform:
```plaintext
.terraform/
*.tfstate
*.tfstate.*
*.tfvars
```
- Mantenha o terraform.tfvars fora do controle de versão se contiver dados sensíveis
- Você pode adicionar README.md para documentação

Precisa de ajuda com algum dos arquivos ou tem dúvidas sobre a estrutura?