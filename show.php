<?php
    /**
     * Exhibit all the information about a show
     */

    include 'include/user_permission.php';
    include 'include/validations.php';
    include 'include/page_navigation.php';

    // Connect to database
    require 'include/connect.php';

    // start session
    session_start();

    // Get the permission level
    $showPermission = getPermission();

    // Sanitize and validate the ID
    $id = validateIntInput(INPUT_GET, 'id');
    if ($id == null)
    {
        // Redirect user to another page
        redirectPage('/proj/home');
    }

    $title = filter_input(INPUT_GET, 'title', FILTER_SANITIZE_SPECIAL_CHARS);

    // Get the production passed by GET parameter
    // run a SELECT query
    $query = "SELECT Name, DateReleased, Country, LastUpdate, Description, Image
              FROM productions
              WHERE ProductionId = $id";

    // prepare a PDOStatement object
    $statement = $db->prepare($query);

    // The query is now executed.
    $success = $statement->execute();

    // Fetch the result in a local variable
    $prod = $statement->fetch();

    // Get the production season
    // run a SELECT query
    $query = "SELECT SeasonNum, NumEpisodes, Year 
              FROM seasons
              WHERE ProductionId = $id";
    // prepare a PDOStatement object
    $statement = $db->prepare($query);
    // The query is now executed.
    $success = $statement->execute();
    // Fetch the result in a local variable
    $seasons = $statement->fetchAll();

    $nextSeason = count($seasons) + 1;
?>

<?php include ("templates/header.php") ?>
    <section>
        <?php if ($showPermission == 1): ?>
            <nav>
                <ul class="nav nav-tabs">
                    <li><a href="edit/<?= $id ?>/<?= $prod['Name'] ?>">Edit</a></li>
                    <li><a href="imageupload/<?= $id ?>/<?= $prod['Name'] ?>">Image Upload</a></li>
                    <li><a href="image_delete_process/<?= $id ?>/<?= $prod['Image'] ?>/<?= $prod['Name'] ?>" onclick="return confirm('Are you sure you wish to delete the image?')">Delete Image</a></li>
                </ul>
            </nav>
        <?php endif; ?>
        <h1><?= $prod['Name'] ?></h1>
        <?php if ($prod['Image'] != ''): ?>
            <div><img src="uploads\<?= $prod['Image'] ?>" alt="<?= $prod['Name'] ?>"></div>
        <?php endif; ?>
        <p>Country: <?= $prod['Country'] ?></p>
        <p>Date Released: <?= date("F j, Y", strtotime($prod['DateReleased'])) ?></p>
        <p>Update on: <?= date("F j, Y", strtotime($prod['LastUpdate'])) ?></p>
        <div>
            <h5>Description:</h5>
            <p><?= html_entity_decode($prod['Description']) ?></p>
        </div>
        <div>
            <ul>
                <?php foreach ($seasons as $season): ?>
                    <li>
                        Season <?=$season['SeasonNum']?> (<?=$season['Year']?>): <?=$season['NumEpisodes']?> episodes
                        <?php if ($showPermission == 1): ?>
                            <a href="editseason/<?=$id?>/<?=$season['SeasonNum']?>/<?=$title?>">Edit</a>
                        <?php endif; ?>
                    </li>
                <?php endforeach; ?>
                <?php if ($showPermission == 1): ?>
                    <a href="createseason/<?=$id?>/<?=$nextSeason?>/<?=$title?>">Add new season</a>
                <?php endif; ?>
            </ul>
        </div>

        <form action="bookmarks" method="post">
            <fieldset>
                <input name="id" value="<?=$id?>" type="hidden">
                <input name="title" value="<?=$title?>" type="hidden">
                <input name="command" value="Bookmark it!" type="submit">
            </fieldset>
        </form>
    </section>
<?php include "templates/footer.php" ?>