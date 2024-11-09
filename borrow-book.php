<?php
header('Content-Type: application/json');

if (isset($_GET['id'])) {
    $bookId = $_GET['id'];

    // Connect to the database
    $conn = new mysqli('localhost', 'username', 'password', 'database');

    if ($conn->connect_error) {
        echo json_encode(['success' => false, 'message' => 'Database connection failed.']);
        exit();
    }

    // Check the current availability
    $result = $conn->query("SELECT quantity FROM books WHERE id = $bookId");
    if ($result->num_rows > 0) {
        $row = $result->fetch_assoc();
        $currentQuantity = $row['quantity'];

        if ($currentQuantity > 0) {
            // Decrease the quantity
            $newQuantity = $currentQuantity - 1;
            $conn->query("UPDATE books SET quantity = $newQuantity WHERE id = $bookId");

            echo json_encode(['success' => true, 'new_quantity' => $newQuantity]);
        } else {
            echo json_encode(['success' => false, 'message' => 'No copies available.']);
        }
    } else {
        echo json_encode(['success' => false, 'message' => 'Book not found.']);
    }

    $conn->close();
} else {
    echo json_encode(['success' => false, 'message' => 'Invalid request.']);
}
?>
