<?php
require_once('item.php');

if (isset($_SESSION['login'])) {

    $itemID = filter_input(INPUT_POST, 'itemID', FILTER_VALIDATE_INT);

    if ((trim($itemID) === '') || (!is_int($itemID))) {
        echo "<h2>Sorry, you must enter a valid item ID number</h2>\n";
    } else {

        $itemName   = htmlspecialchars(trim($_POST['itemName']));
        
        $categoryID = filter_input(INPUT_POST, 'categoryID', FILTER_VALIDATE_INT);

        if (!is_int($categoryID)) {
            echo "<h2>Sorry, you must enter a valid Category ID number</h2>\n";
            return;
        }

        $listPrice  = filter_input(INPUT_POST, 'listPrice', FILTER_VALIDATE_FLOAT);

        if ($listPrice === false) {
            echo "<h2>Please enter a valid list price</h2>\n";
            return;
        }

        $item = new Item($itemID, $itemName, $categoryID, $listPrice);

        $result = $item->saveItem();

        if ($result) {
            echo "<h2>New Item #$itemID successfully added</h2>\n";
        } else {
            echo "<h2>Sorry, there was a problem adding that item</h2>\n";
        }
    }

} else {
    echo "<h2>Please login first</h2>\n";
}
?>
