<html xmlns="http://www.w3.org/1999/html" xmlns="http://www.w3.org/1999/html" xmlns="http://www.w3.org/1999/html"
	  xmlns="http://www.w3.org/1999/html">
	<head>
		<script language="JavaScript" type="text/javascript" src="../js/jquery.js"></script>
	</head>
<html>
	<body style="background:#dbd3ce">
		<input style="z-index: 10000; position: fixed; background-color:#979797 ; right: 10.5em" type="button" value="Voltar" onClick="history.go(-1)">
		<input style="z-index: 10000; position: fixed; background-color:#979797 ; right: 5.0em;" type="button" value="Atualizar" onClick="history.go(0)">
		<input style="z-index: 10000; position: fixed; background-color:#979797 ; right: 1.5em;" type="button" value="Topo" onCLick="window.scrollTo(0,0)">
		<input style="z-index: 10000; position: fixed; background-color:#979797 ; right: 14.5em;" type="button" value="Início" onClick="window.location='index.php'">
		<form id="form_agenda" action="index.php" method="get">
			<h1>AGENDA ELETRÔNICA</h1>
			<tr>
				<td><a href="nome_contato.php?id_contato={$contato.id_contato}">{$contato.nome|utf8_encode}</a></td>
			</tr>
			<a href="novocontato.php"><h4>Novo contato</h4></a></br>
			Pesquisar contato: <input type="text" name="nome">
			<input type="submit" value="Enviar"></br></br>
			Lista de contatos:

		</form>
		<table bgcolor="#deb887" border="10" >
			<tr>
				<td><h3>Nome</h3></td><td><h3>Email</h3></td><td><h3>Celular</h3></td><td><h3>Nascimento</h3></td><td><h3>Filho</h3></td><td><h3>Ação</h3></td>
			</tr>
			{foreach from=$contatos item=contato}
				<tr>
					<td><a href="editar.php?id_pessoa={$contato.id}">{$contato.nome|utf8_encode}</a></td><td>{$contato.email|utf8_encode}</td><td>{$contato.celular}</td><td>{$contato.nascimento}</td><td>{$contato.filho}</td><td><a href="excluir.php?id={$contato.id}">Excluir</a></td>
				</tr>

			{/foreach}
		

		</table>

	</body>

</html>