<h3>Операции с картриджами</h3>
<hr>
<form action="/cartridges/" method="post" class="cartform">
    <?php for($i=1; $i<4; $i++): ?>
    <fieldset class="form-group">
        <legend>Картридж №<?php echo $i;?></legend>

    <div class="form-row">
        <div class="col-2">
            <div class="input-group mb-3">
                <div class="input-group-prepend">
                    <label class="input-group-text" for="inputGroupSelect01"><i class="fas fa-male"></i>&nbsp;<i class="fas fa-arrow-right"></i></label>
                </div>
                <select class="nselect-1" name="MVO_out[]" data-title="MBO">
                    <option selected>Выбрать МВО</option>
                    <?php foreach ($mvoarr as $item=>$value): ?>
                    <option value="<?php echo $value['id'] ?>"><?php echo $value['id']." ".$value['name'] ?></option>
                    <?php endforeach; ?>

                </select>
            </div>
        </div>
        <div class="col-2">
            <div class="input-group mb-3">
                <div class="input-group-prepend">
                    <label class="input-group-text" for="inputGroupSelect02"><i class="fas fa-arrow-right"></i>&nbsp;<i class="fas fa-male"></i></label>
                </div>
                <select class="nselect-1" name="MVO_in[]" data-title="MBO">
                    <option selected>Выбрать МВО</option>
                    <?php foreach ($mvoarr as $item=>$value): ?>
                        <option value="<?php echo $value['id'] ?>"><?php echo $value['id']." ".$value['name'] ?></option>
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


        <div class="col-4">
            <div class="input-group mb-3">
                <div class="input-group-prepend">
                    <span class="input-group-text" id="basic-addon1"><i class="far fa-edit"></i></span>
                </div>
                <input type="text" class="form-control" placeholder="Комментарий" aria-label="Username" aria-describedby="basic-addon1" name="remarks[]">
            </div>
        </div>
        <div class="col-1" style="text-align: right;">
            <a class="btn btn-danger" href="#">
                <i class="fas fa-window-close"></i></a>
        </div>
        <div class="col-1">
            <a class="btn btn-success" href="#">
                <i class="fas fa-plus-square"></i></a>
        </div>
    </div>
    </fieldset>
    <?php endfor; ?>

    <div class="sbmtwrapper"><input type="submit" value="Сохранить"></div>
</form>