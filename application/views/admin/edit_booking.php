<div class="content-wrapper">
    <div class="card mt-4">
        <div class="card-header">
            <h2>Edit Booking </h2>
        </div>
        <div class="card-body">
            <form class="database_operation_from"
                data-url="<?php echo base_url('admin/bus_booking/' . $booking['id']); ?>">
                <div class="form-group">
                    <label>Status</label>
                    <select class="form-control" name="status">
                        <option <?php if ($booking['status'] == 0) {
                            echo "selected";
                        } ?> value="0">Pending</option>
                        <option <?php if ($booking['status'] == 1) {
                            echo "selected";
                        } ?> value="1">Completed</option>
                    </select>
                </div>
                <div class="form-group">
                    <label>Name Booking</label>
                    <input type="text" name="name" value="<?php echo $booking['name'] ?>" required class="form-control"
                        placeholder="Enter Name " />
                </div>
                <div class="form-group">
                    <label>Mobile Number</label>
                    <input type="text" name="mobile" value="<?php echo $booking['mobile'] ?>" required
                        class="form-control" placeholder="Enter mobile number " />
                </div>
                <div class="form-group">
                    <label>ID KTP</label>
                    <input type="text" name="numberofmember" value="<?php echo $booking['numberofmember'] ?>" required
                        class="form-control" placeholder="Enter ID" />
                </div>
                <div class="form-group">
                    <label>Seat</label>
                    <input type="text" name="seat" value="<?php echo $booking['seat'] ?>" required class="form-control"
                        placeholder="Enter Seat" />
                </div>
                <div class="form-group">
                    <label>Bus</label>
                    <select class="form_control" name="bus" required>
                        <option value="">Select Bus</option>
                        <?php
                        foreach ($schedules as $schedule) {
                            ?>
                            <option <?php if ($booking['bus'] == $schedule['id']) {
                                echo "selected";
                            } ?>
                                value="<?php echo $schedule['id'] ?>"><?php echo $schedule['bus_number'] ?></option>
                            <?php
                        }
                        ?>
                    </select>
                </div>
                <div class="form-group">
                    <button type="submit" class="btn btn-info">Update Booking</button>
                </div>
            </form>
        </div>
    </div>
</div>