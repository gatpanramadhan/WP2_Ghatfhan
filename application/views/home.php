<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>GHATFHAN GANTENG</title>
    <link rel="stylesheet" href="<?php echo base_url('assets/frontend/css/bootstrap.css') ?>">
    <link rel="stylesheet" href="<?php echo base_url('assets/frontend/css/custom.css?date=' . date("s")) ?>">
</head>

<body style="height:1500px">

    <nav class="navbar navbar-expand-sm bg-dark navbar-dark fixed-top">
        <a class="navbar-brand" href="#">MORNING PERSON BUS BOOKING </a>
        <ul class="navbar-nav" style="margin-left:70%">
            <li class="nav-item active">
                <a class="nav-link" href="#">Home</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">Contact</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">Help</a>
            </li>
        </ul>
    </nav>

    <div style="background:url('<?php echo base_url('assets/frontend/images/img1.png'); ?>'); height:350px">
        <div class="form-container">
            <form action="<?php echo base_url("/") ?>" method="get">
                <div class="row inner-container">
                    <div class="col-sm-4">
                        <div class="form-group">
                            <label class="bold">Select From Location</label>
                            <select name="start" class="form-control" required>
                                <option value="">Select From Location</option>
                                <?php
                                foreach ($locations as $loc) {
                                    ?>
                                    <option value="<?php echo $loc['id'] ?>"><?php echo $loc['name'] ?>
                                    </option>
                                    <?php
                                }
                                ?>
                            </select>
                        </div>
                    </div>
                    <div class="col-sm-4">
                        <div class="form-group">
                            <label class="bold">Select To Location</label>
                            <select name="end" class="form-control" required>
                                <option value="">Select To Location</option>
                                <?php
                                foreach ($locations as $loc) {
                                    ?>
                                    <option value="<?php echo $loc['id'] ?>"><?php echo $loc['name'] ?>
                                    </option>
                                    <?php
                                }
                                ?>
                            </select>
                        </div>
                    </div>
                    <div class="col-sm-3">
                        <div class="form-group">
                            <label class="bold">Date</label>
                            <input type="Date" name="date" class="form-control" required />
                        </div>
                    </div>
                    <div class="col-sm-1 pt-4">
                        <div class="form-group pt-2 pr-2">
                            <button type="submit" class="btn btn-info btn-block">Search</button>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>
    <div class="container" style="margin-top:80px">
        <?php
        if (count($schedules) > 0) {
            foreach ($schedules as $schedule) {
                ?>
                <div class="card custom-card">
                    <div style="padding-top:25px; padding-left:34px; display:flex">
                        <div style="width:30%; text-align:center">
                            <h3><?php echo $schedule['bus_number'] ?></h3>
                            <p><?php echo $schedule['date'] ?></p>
                        </div>
                        <div style="width:15%">From : <?php
                        foreach ($locations as $loc) {
                            if ($loc['id'] == $schedule['start']) {
                                echo $loc['name'];
                            }
                        }
                        ?>
                        </div>
                        <div style="width:15%">To : <?php
                        foreach ($locations as $loc) {
                            if ($loc['id'] == $schedule['end']) {
                                echo $loc['name'];
                            }
                        }
                        ?>
                        </div>
                        <div style="width:20%"><?php echo $schedule['amount'] . 'K' ?></div>
                        <div style="width:20%"><a href="<?php echo base_url("home/booking/" . $schedule['id']) ?>"
                                class="btn btn-danger">Book Now</a></div>
                    </div>
                </div>
                <?php
            }
        } else {
            ?>
            <div class="card custom-card">
                <div style="padding-top:34px; padding-left:34px; text-align:center">
                    <h3>Search Available Bus Routes</h3>
                </div>
            </div>
            <?php
        }
        ?>

    </div>
</body>

</html>