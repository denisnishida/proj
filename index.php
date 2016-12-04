<?php
    /**
     * Home page of the Series Tracker
     * Exhibit all series available in the database
     */

    include 'include/user_permission.php';

    // Connect to database
    //require 'include/connect.php';

    // start session
    session_start();

    // Get the permission level
    $showPermission = getPermission();

    $orderBy = 'Name';

    if (isset($_GET['orderby']))
    {
        // Sanitize and validate the Order by parameter
        $orderBy = filter_input(INPUT_GET, 'orderby', FILTER_SANITIZE_FULL_SPECIAL_CHARS);
    }

    // Get all the productions in the productions table
    // run a SELECT query
    //$query = "SELECT ProductionId, Name, DateReleased, Country, LastUpdate FROM productions ORDER BY $orderBy";

    // prepare a PDOStatement object
    //$statement = $db->prepare($query);

    // The query is now executed.
    //$success = $statement->execute();

    // Fetch the result in a local variable
    //$productions = $statement->fetchAll();
?>

<?php include "templates/header.php" ?>
    <section>
        <?php if ($showPermission == 1): ?>
            <p><a href="create_production">Add New Production</a></p>
        <?php endif; ?>
        <table class="table">
            <thead>
                <tr>
                    <th><a href="home/Name">Name</a></th>
                    <th><a href="home/DateReleased">Date Released</a></th>
                    <th><a href="home/Country">Country</a></th>
                    <th><a href="home/LastUpdate">Updated on</a></th>
                </tr>
            </thead>
            <tbody>
                <?php foreach ($productions as $prod): ?>
                <tr>
                    <td><a href="show/<?= $prod['ProductionId'] ?>/<?= $prod['Name'] ?>"><?= $prod['Name'] ?></a></td>
                    <td><?= date("F j, Y", strtotime($prod['DateReleased'])) ?></td>
                    <td><?= $prod['Country'] ?></td>
                    <td><?= date("F j, Y", strtotime($prod['LastUpdate'])) ?></td>
                </tr>
                <?php endforeach; ?>
            </tbody>
        </table>
    </section>
<?php include "templates/footer.php" ?>

