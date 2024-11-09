<?php
$servername = "localhost";
$username = "root"; // Το όνομα χρήστη
$password = ""; // Το κωδικό πρόσβασης
$dbname = "library"; // Το όνομα της βάσης

// Δημιουργία σύνδεσης
$conn = new mysqli($servername, $username, $password, $dbname);

// Έλεγχος σύνδεσης
if ($conn->connect_error) {
    die("Σφάλμα σύνδεσης: " . $conn->connect_error);
}
?>
