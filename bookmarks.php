<?php
    /**
     * Page that shows the productions that the user is following
     * Need to be logged to see it
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

    $error = null;

    // Verify if data was posted => manage data in the table
    if (isset($_POST['command']))
    {
        // Extract the data POSTed sanitizing user input
        $command = filter_input(INPUT_POST, 'command', FILTER_SANITIZE_FULL_SPECIAL_CHARS);
        $title = filter_input(INPUT_POST, 'title', FILTER_SANITIZE_FULL_SPECIAL_CHARS);
        $lastSeasonWatched = validateIntInput(INPUT_POST, 'lastSeasonWatched');
        $lastEpisodeWatched = validateIntInput(INPUT_POST, 'lastEpisodeWatched');
        $id = validateIntInput(INPUT_POST, 'id');

        if ($id == null)
        {
            $error = 'Invalid input.';
        }
        else
        {
            if ($command == 'Bookmark it!')
            {
                // Insert the new record in the database
                $query = "INSERT INTO usersproductions (UserId, ProductionId, LastSeasonWatched, IsTracked, LastEpisodeWatched) 
                          VALUES (:UserId, :ProductionId, :LastSeasonWatched, :IsTracked, :LastEpisodeWatched)";
                $statement = $db->prepare($query);
                $statement->bindValue(':UserId', $_SESSION['UserId']);
                $statement->bindValue(':ProductionId', $id);
                $statement->bindValue(':LastSeasonWatched', 0);
                $statement->bindValue(':IsTracked', true);
                $statement->bindValue(':LastEpisodeWatched', 0);
                $statement->execute();
            }
            elseif ($command == 'Update')
            {
                if ($lastSeasonWatched == null || $lastSeasonWatched < 0 ||
                    $lastEpisodeWatched == null || $lastEpisodeWatched < 0)
                {
                    $error = 'Invalid input.';
                }
                else
                {
                    // Update the new record in the database
                    $query = "UPDATE usersproductions 
                              SET LastSeasonWatched = :LastSeasonWatched, LastEpisodeWatched = :LastEpisodeWatched
                              WHERE UserId = :UserId
                                AND ProductionId = :ProductionId";
                    $statement = $db->prepare($query);
                    $statement->bindValue(':UserId', $_SESSION['UserId']);
                    $statement->bindValue(':ProductionId', $id);
                    $statement->bindValue(':LastSeasonWatched', $lastSeasonWatched);
                    $statement->bindValue(':LastEpisodeWatched', $lastEpisodeWatched);
                    $statement->execute();
                }
            }
            elseif ($command == 'Delete')
            {
                $query = "DELETE FROM usersproductions
                          WHERE UserId = :UserId
                            AND ProductionId = :ProductionId";
                $statement = $db->prepare($query);
                $statement->bindValue(':UserId', $_SESSION['UserId']);
                $statement->bindValue(':ProductionId', $id);
                $statement->execute();
            }
        }
    }

    $orderBy = 'Name';

    if (isset($_GET['orderby']))
    {
        // Sanitize and validate the Order by parameter
        $orderBy = filter_input(INPUT_GET, 'orderby', FILTER_SANITIZE_FULL_SPECIAL_CHARS);
    }

    // Get the production associated with the logged user
    // run a SELECT query
    $query = "SELECT Name, LastUpdate, LastSeasonWatched, LastEpisodeWatched, productions.ProductionId
              FROM productions INNER JOIN usersproductions
              ON productions.ProductionId = usersproductions.ProductionId
              WHERE UserId = :UserId
              ORDER BY $orderBy";
    // prepare a PDOStatement object
    $statement = $db->prepare($query);
    $statement->bindValue(':UserId', $_SESSION['UserId']);
    // The query is now executed.
    $success = $statement->execute();
    // Fetch the result in a local variable
    $bookmarks = $statement->fetchAll();
?>

<?php include "templates/header.php" ?>
    <section>
        <?php if ($error != null): ?>
            <p><?=$error?></p>
        <?php endif; ?>
        <?php if ($showPermission > 0): ?>
            <table class="table">
                <thead>
                <tr>
                    <th><a href="bookmarks/Name">Name</a></th>
                    <th><a href="bookmarks/LastUpdate">Updated on</a></th>
                    <th>Last Season Watched</th>
                    <th>Last Episode Watched</th>
                    <th>Management</th>
                </tr>
                </thead>
                <tbody>
                    <?php foreach ($bookmarks as $bookmark): ?>
                        <form action="bookmarks" method="post">
                            <tr>
                                <td><a href="show/<?= $bookmark['ProductionId'] ?>/<?= $bookmark['Name'] ?>"><?= $bookmark['Name'] ?></a></td>
                                <td><?= date("F j, Y", strtotime($bookmark['LastUpdate'])) ?></td>
                                <td><input name="lastSeasonWatched" value="<?=$bookmark['LastSeasonWatched']?>" type="number"></td>
                                <td><input name="lastEpisodeWatched" value="<?=$bookmark['LastEpisodeWatched']?>" type="number"></td>
                                <td>
                                    <input name="id" value="<?=$bookmark['ProductionId']?>" type="hidden">
                                    <input name="command" value="Update" type="submit">
                                    <input name="command" value="Delete" type="submit" onclick="return confirm('Are you sure you wish to delete this bookmark?')">
                                </td>
                            </tr>
                        </form>
                    <?php endforeach; ?>
                </tbody>
            </table>
        <?php else: ?>
            <p>You need to be logged to see your bookmarked series.</p>
        <?php endif; ?>
    </section>
<?php include "templates/footer.php" ?>