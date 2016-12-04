<?php
    /**
     * Header template
     */
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <base href="/">
    <meta charset="utf-8">
    <title>Series Manager</title>
    <script src="vendor/ckeditor/ckeditor/ckeditor.js"></script>
    <link rel="stylesheet" href="css/bootstrap.css">
</head>
<body>
    <header>
        <h1><a href="home">Series Manager</a></h1>
    </header>
    <div id="mainnavigation">
        <nav>
            <ul class="nav nav-tabs">
                <li><a href="home">Home</a></li>
                <li><a href="bookmarks">Bookmarks</a></li>
                <?php if ($showPermission == 0): ?>
                    <li><a href="signin/SignOn">Sign On</a></li>
                    <li><a href="signin/Register">Register</a></li>
                <?php else: ?>
                    <li><a href="signoff">Sign Off</a></li>
                    <?php if ($showPermission == 1): ?>
                        <li><a href="manageusers">Manage Users</a></li>
                    <?php endif; ?>
                <?php endif; ?>
            </ul>
        </nav>
    </div>
    <div>
        <?php if ($showPermission > 0): ?>
            <div>You are logged as <?= $_SESSION['FirstName'] . ' ' . $_SESSION['LastName'] ?></div>
        <?php endif; ?>
    </div>
