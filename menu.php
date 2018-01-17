            <header>
                
                    <nav>
                        <ul>
                            <li><a class="<?= basename($_SERVER['PHP_SELF']) == "perfil.php" ? "ativo" : "" ?>" title="Perfil" href="perfil.php"><img src="./images/logo_menu.png" alt="" style="top: 2px; left: 10px;  display: float; position: absolute"></a></li>
                            <li><a class="<?= basename($_SERVER['PHP_SELF']) == "perfil.php" ? "ativo" : "" ?>" title="Perfil" href="perfil.php">Perfil</a></li>
                            <li><a class="<?= basename($_SERVER['PHP_SELF']) == "caronas.php" ? "ativo" : "" ?>" href="caronas.php" title="Ver Caronas">Caronas</a></li>
                            <li><a class="<?= basename($_SERVER['PHP_SELF']) == "amigos.php" ? "ativo" : "" ?>" title="Meus Amigos" href="amigos.php">Amigos</a></li>
                            <li><a class="<?= basename($_SERVER['PHP_SELF']) == "alterar-dados.php" ? "ativo" : "" ?>" title="Alterar Dados" href="alterar-dados.php">Alterar Dados</a></li>
                            <li><a class="<?= basename($_SERVER['PHP_SELF']) == "pesquisar-caronas.php" ? "ativo" : "" ?>" title="Pesquisar Caronas" href="pesquisar-caronas.php">Pesquisar Caronas</a></li>
                            <li class="sair"><a title="Sair" href="index.php?out=ok">Sair</a></li>
                        </ul>
                    </nav>

            </header>