Depois de instalar o Ruby, instalar e usar o Watir é muito fácil.

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

O resultado do "require 'watir'" deve ser true, quando tem algum problema, mostra uma pilha de erro.
