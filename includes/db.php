<?php

	$dsn = "mysql:host=localhost;dbname=techmahesh";

	try {
		$pdo = new PDO($dsn, 'root', '');
	}
	catch(PDOException $e) {
		echo $e->getMessage();
	}

?>