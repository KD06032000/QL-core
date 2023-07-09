<?php
defined('BASEPATH') OR exit('No direct script access allowed');

$name='album[]';
$box='file';
?>
<div class="form-group">
  <fieldset class="form-group album-contain">
    <legend>Album</legend>
    <div data-id="0" id="<?=$box?>" class="file"></div>
    <div class="clearfix"></div>
    <p class="error-multiple-media"></p>
    <div class="col-md-12">
      <button type="button" class="btn btn-primary btnAddMore"
              onclick="chooseMultipleFiles('<?=$box?>','<?php echo $name ?>')">
        <i class="fa fa-plus"> <?php echo lang('btn_add'); ?> </i>
      </button>
    </div>
  </fieldset>
</div>