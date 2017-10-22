Depois de instalar o Ruby, instalar e usar o Watir Framework que é um dos frameworks mais usados para automação de testes de UI (Interface Gráfica). Usamos o Watir para Automatizar os nossos testes de Regressão em aplicações Web.

A partir da linha de comando, instale a gem/gema, que é o código fonte do framework empacotado em Ruby, mais chamada de biblioteca em outras linguagens de programação:<br>
```prompt
gem install watir
```

![watir install](https://github.com/reinaldorossetti/ProjetoModeloWatir/blob/master/imgs/watir_install.PNG)<br>

Para fazer a desistalação ou remover a biblioteca/gem do Watir, usamos o comando **gem uninstall**:
```prompt
gem uninstall watir
```

Para atualizar a versão da biblioteca/gem do Watir, usamos o comando **gem update**, vai atualizar para a versão mais nova:
```prompt
gem update watir
```

Para listar todas as biblioteca/gem do Watir, para isso usamos o comando **gem list**:
```prompt
gem list
```

Agora você pode experimentá-lo, abrindo uma sessão Interactive Ruby que é chamada de irb.<br>

     Se você estiver usando o Mac OS X, abra o Terminal e digite "irb" sem as aspas duplas, então pressione enter.
     Se você estiver usando o Linux, abra um shell e "irb" sem as aspas duplas, então pressione enter.
     Se você estiver usando o Windows, abra o prompt e digite "irb" sem as aspas duplas, então pressione enter.

Agora você só precisa dar o "require 'watir'" no console do irb, sem as aspas duplas para usar o framework do watir.<br>

![irb watir](https://github.com/reinaldorossetti/ProjetoModeloWatir/blob/master/imgs/irb_watir.PNG)<br>

O resultado do "require 'watir'" deve ser true, quando tem algum problema, mostra uma pilha de erro. Para sair do console digitamos o comando **Exit**

**RubyGems.org** é o serviço de hospedagem de gems da comunidade Ruby. Quando entramos no site pesquisamos a gem do Watir, temos um breve resumo sobre a biblioteca e tem a lista de versões, nesse momento a versão mais atual é a 6.8.4, e o mais importante são com relação as dependências da biblioteca, sem as dependências instalada a biblioteca/gem não roda corretamente, no caso do Watir temos a dependência do selenium-webdriver que tem ser superior a versão 3.4, caso não seja atendida pode ocorrer vários problemas.

**Uma curiosidade do Framework do Watir que ele é um framework criado em cima do selenium-webdriver, ou seja o core dele é o framework do Selenium WebDriver, o framework trás diversas melhorias que vamos falar mais a frente.**

Referências:<br>
https://rubygems.org/gems/watir<br>
http://www.rubydoc.info/gems/watir/<br>
http://watir.com/watir-6-8/
