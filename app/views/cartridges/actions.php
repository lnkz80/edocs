<h3>Операции с картриджами</h3>
<hr>

<?php
    if($res) {
    echo "<p class='text-success'>Данные успешно внесены.</p>";
    unset($_POST);
    }
    ?>


<form action="#" method="post" class="cartform">
    <div class="sbmtwrapper">
        <button type="submit" class="btn btn-success"><i class="fas fa-save"></i></button>
        <button type="reset" class="btn btn-danger"><i class="fas fa-window-close"></i></button>
    </div>

    <div class="form-group" id="fg">
    <div class="form-row">
        <div class="col-2">
            <div class="input-group mb-3">
                <div class="input-group-prepend">
                    <label class="input-group-text" for="inputGroupSelect01"><i class="fas fa-male"></i>&nbsp;<i class="fas fa-arrow-right"></i></label>
                </div>
                <select class="nselect-1" name="MVO_out[]">

                    <?php foreach ($mvoarr as $item=>$value): ?>
                    <option value="<?php echo $value['id'] ?>"><?php echo $value['id'].". ".$value['name'] ?></option>
                    <?php endforeach; ?>

                </select>
            </div>
        </div>
        <div class="col-2">
            <div class="input-group mb-3">
                <div class="input-group-prepend">
                    <label class="input-group-text" for="inputGroupSelect02"><i class="fas fa-arrow-right"></i>&nbsp;<i class="fas fa-male"></i></label>
                </div>
                <select class="nselect-1" name="MVO_in[]">

                    <?php foreach ($mvoarr as $item=>$value): ?>
                        <option value="<?php echo $value['id'] ?>"><?php echo $value['id'].". ".$value['name'] ?></option>
                    <?php endforeach; ?>
                </select>
            </div>
        </div>

        <div class="col-2">
            <div class="input-group mb-3">
                <div class="input-group-prepend">
                    <label class="input-group-text" for="inputGroupSelect03">#</label>
                </div>
                <select class="nselect-1" name="invcode[]" data-title="Cartridge">
                    <option selected>Номер картриджа</option>
                    <?php foreach ($cartarr as $item=>$value): ?>
                        <option value="<?php echo $value['id'] ?>"><?php echo $value['invcode'] ?></option>
                    <?php endforeach; ?>
                </select>
            </div>
        </div>        

    </div>

        <div class="row">
            <div class="col-5">
                <div class="input-group mb-3">
                    <div class="input-group-prepend">
                        <span class="input-group-text" id="basic-addon1"><i class="far fa-edit"></i></span>
                    </div>
                    <input type="text" class="form-control" placeholder="Комментарий" aria-label="Username"
                           aria-describedby="basic-addon1" name="remarks[]">
                </div>
            </div>
        </div>
        
    </div>



</form>