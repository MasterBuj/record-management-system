<form action="saveTransac.php" method="POST">

	Date In<br>
	<input type="text" name="date" required /><br><br>

	Date Out<br>
	<input type="text" name="dateo" required /><br><br>

	Received By<br>
	<input type="text" name="rb" required /><br><br>

	Document Type<br>
	<select name="doc_type" class="ed">
		<?php
		include('connect.php');
		$result = $db->prepare("SELECT * FROM doc_type ORDER BY id DESC");
		$result->execute();
		for ($i = 0; $row = $result->fetch(); $i++) {
			echo '<option value="' . $row['name'] . '">' . $row['name'] . '</option>';
		}
		?>
	</select><br /><br>

	Description<br>
	<textarea name="desc"></textarea><br><br>

	Office<br>
	<select name="office" class="ed">
		<?php
		include('connect.php');
		$result = $db->prepare("SELECT * FROM offices ORDER BY id DESC");
		$result->execute();
		for ($i = 0; $row = $result->fetch(); $i++) {
			echo '<option value="' . $row['name'] . '">' . $row['name'] . '</option>';
		}
		?>
	</select><br /><br>

	Status<br>
	<select name="status" class="ed" required>
		<option value="Declined">Declined</option>
		<option value="Delivered">Delivered</option>
		<option value="Needs to View">Needs to View</option>
		<option value="Completed">Completed</option>
	</select>
	<br><br>

	Forwarded To<br>
	<input type="text" name="ft" required /><br><br>

	<input type="submit" name="saveTransac" value="Save" />
</form>