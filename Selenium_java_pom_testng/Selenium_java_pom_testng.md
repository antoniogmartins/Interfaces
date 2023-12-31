# JAVA (Selenium x Java x POM x TestNg)

=> Desafio: Automatizar os testes de um E-Commerce. Para isso foi utilizada a linguagem Java e o framework de automação: selenium e como base foi utilizado o Padrão de Objeto - Page Object Model. E, para a geração de relatorios foi utilizada a dependencia TestNg

🚀 **Recursos utilizados**
- Sop: Linux - Ubuntu22
- Navegador para execução dos testes:
    - Chrome: //drivers/chromedriver-linux64.zip
- JavaSE-17
- TestNg
- Dependencia(s)
   - selenium-java - versão 3.141.0
   - maven-compiler-plugin versão 3.8.1
## 🔖 Recursos configurados
![Captura de ecrã de 2023-12-19 11-20-00](https://github.com/antoniogmartins/Interfaces/assets/35534493/07f89c8d-e880-41c9-b9de-61c67c49a18b)

![Captura de ecrã de 2023-12-19 11-20-12](https://github.com/antoniogmartins/Interfaces/assets/35534493/1c5cbdd8-df28-4022-b232-891cc6b40987)

## 🔖 Estrutura e Distribuição do Código
- Pasta: casosdetestes => estão disponibilizados o codigo onde são execução dos scritps de testes automatizados
- Pasta: paginas => estão disponibilizados os scripts de testes utilizando o padrão de projeto: Page Object Model

## 🔖 Casos de Testes
- [X] CT001.1 - Validar Login de Usuario após informar um email e senha validos
- [X] CT001.2 - Validar Login de Usuario inválidos (email/senha nulos ou incorretos)
- [X] CT002.1 - Adicionar Produtos do Carrinho
- [X] CT002.2 - Remover Produtos do Carrinho
- [X] CT003.1 - Fazer Checkout dos Produtos adicionados no Carrinho
- [X] CT003.2 - Validar Campos obrigatórios do formulatrio de Checkout
- [X] CT004.1 - Finalizar a Compra
- [X] CT004.2 - Validar Valor Total da Compra


🚀**CT001.1 - Validar Login de um Usuario Válido**

![Codigo_Fonte_Validar_Login_Valido](https://github.com/antoniogmartins/Interfaces/assets/35534493/e5c3083a-a67d-4462-bee9-ab32b57c5d6c)

![Evidencia_Testes_Validar_Login](https://github.com/antoniogmartins/Interfaces/assets/35534493/ddb150dd-5910-49e0-a7ff-afb129f66719)

🚀**CT001.2 - Validar Login de um Usuario Inválido**

![Codigo_Fonte_Validar_Login_Invalido](https://github.com/antoniogmartins/Interfaces/assets/35534493/cfeca5ae-0e9b-4f3e-ad1a-b7a54b184398)

![Evidencia_Testes_Usuario_Invalido](https://github.com/antoniogmartins/Interfaces/assets/35534493/0a4a0083-b211-48d8-967f-5e8e7eb1127a)

🚀 **CT002.1 - Adicionar Produtos ao Carrinho**

![Codigo_Fonte_Adicionar_Carrinho](https://github.com/antoniogmartins/Interfaces/assets/35534493/27dfe5fb-f6a6-42bf-849b-b8fe8085c188)

![Evidencia_Testes_Adicionar_Carrinho](https://github.com/antoniogmartins/Interfaces/assets/35534493/c81eae87-7b70-4b1d-8815-4cbd623058c2)

🚀 **CT002.2 - Remover Produtos do Carrinho**

![Codigo_Fonte_Remover_Carrinho](https://github.com/antoniogmartins/Interfaces/assets/35534493/1419ddc4-6259-460f-bd75-003c4727bc69)

![Evidencia_Testes_Remover_Carrinho](https://github.com/antoniogmartins/Interfaces/assets/35534493/a0d27cb0-4869-404b-a669-963924aa2747)

🚀 **CT003.1 - Fazer Checkout**

![Codigo_Fonte_Fazer_Checkout](https://github.com/antoniogmartins/Interfaces/assets/35534493/13d0df0d-dbf3-4800-bb5f-ecda4721f0f4)

![Captura de ecrã de 2023-12-25 17-38-24](https://github.com/antoniogmartins/Interfaces/assets/35534493/46987c45-8686-4cf5-bac5-412e0c15aae8)

🚀 **CT003.2 - Validar Campos Checkout**

![Codigo_Fonte_Validar_Campos_Checkout](https://github.com/antoniogmartins/Interfaces/assets/35534493/5897f428-fd32-4a37-a963-91ba6c22566b)

![Evidencia_Testes_Fazer_Checkout](https://github.com/antoniogmartins/Interfaces/assets/35534493/022166f9-bd2d-4b6d-83ff-a00eb62707d8)

🚀 **CT004.1 - Finalizar Compra**

![Codigo_Fonte_Fazer_FinalizarCompra](https://github.com/antoniogmartins/Interfaces/assets/35534493/d4da5d75-8b91-46d7-878d-008d99d8c301)

![Evidencia_Testes_Finalizar_Compra](https://github.com/antoniogmartins/Interfaces/assets/35534493/b870330d-8fca-4ea8-898a-0f7ade37ea56)


🚀 **CT004.2 - Validar Valor Total da Compra**

![Codigo_Fonte_Validar_Valor_Total_Compra](https://github.com/antoniogmartins/Interfaces/assets/35534493/46b93d78-9921-48c5-b95b-4052822742a5)

![Evidencia_Testes_Validar_Valor_Total](https://github.com/antoniogmartins/Interfaces/assets/35534493/b5540dd9-0740-4a4a-b976-a2d3aa27af85)


🚀 **Executando os testes utilizando o TestNG(Relatórios de Execução)**

![Evidencia_Testes_Relatorio_Final](https://github.com/antoniogmartins/Interfaces/assets/35534493/be6b05e7-698b-4cbc-ad1c-375a3566ec1b)

Obs.: É preciso que vc esteja conectado a internet

🚀 **Análise Final**
=> Todos os testes foram executados com exito

📝 **License**

This project is licensed under the MIT License - see the LICENSE file for details.
Feito com 💜  por Antonio Martins 👋   Meu linkedin


