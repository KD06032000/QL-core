<?php
defined('BASEPATH') or exit('No direct script access allowed'); ?>
<!-- Main content -->
<section class="content">
    <div class="row">
        <div class="col-xs-12">
            <div class="box">
                <div class="box-body">
                    <div class="row">
                        <div class="col-md-7"></div>
                        <?php $this->load->view($this->template_path . "_block/button") ?>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-xs-12">
            <div class="box">
                <div class="box-body">
                    <table id="data-table" class="table table-bordered table-striped">
                        <thead>
                        <tr>
                            <th><input type="checkbox" name="select_all" value="" id="data-table-select-all"></th>
                            <th><?php echo lang('text_id'); ?></th>
                            <th><?php echo lang('text_msv'); ?></th>
                            <th><?php echo lang('text_full_name'); ?></th>
                            <th><?php echo lang('text_email'); ?></th>
                            <th><?php echo lang('text_date_of_birth'); ?></th>
                            <th><?php echo lang('text_gender'); ?></th>
                            <th><?php echo lang('text_address'); ?></th>
                            <!-- <th><?php echo lang('text_class'); ?></th>
                            <th><?php echo lang('text_subject'); ?></th> -->
                            <?php showColumnAction(); ?>
                        </tr>
                        </thead>
                    </table>
                </div>
                <!-- /.box-body -->
            </div>
            <!-- /.box -->
        </div>
        <!-- /.col -->
    </div>
    <!-- /.row -->
</section>
<!-- /.content -->

<!-- Bootstrap modal -->
<div class="modal fade" id="modal_form" role="dialog">
    <div class="modal-dialog" style="width: 70%;">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span>
                </button>
                <h3 class="modal-title" id="title-form"><?php echo lang('heading_title_add'); ?></h3>
            </div>
            <div class="modal-body form" style="padding: 10px;">
                <?php echo form_open('', ['id' => 'form']) ?>
                <input type="hidden" name="id" value="0">

                <div class="box-body">
                    <div class="col-xs-6">
                        <div class="form-group">
                            <label>Mã sinh viên <?php showRequiredField() ?></label>
                            <input name="msv" autocomplete="off" placeholder="<?php echo lang('form_msv'); ?>"
                                   class="form-control" type="text"/>
                        </div>
                    </div>
                    <div class="col-xs-6">
                        <div class="form-group">
                            <label><?php echo lang('form_email'); ?>*</label>
                            <input name="email" autocomplete="off" placeholder="<?php echo lang('form_email'); ?>" class="form-control"
                                   type="text"/>
                        </div>
                    </div>
                    <div class="col-xs-6">
                        <div class="form-group">
                            <label><?php echo lang('form_full_name'); ?></label>
                            <input name="full_name" autocomplete="off" placeholder="<?php echo lang('form_full_name'); ?>"
                                   class="form-control" type="text"/>
                        </div>
                    </div>
                    <div class="col-lg-6">
                            <div class="form-group">
                                <label>Ngày sinh</label>
                                <input class="form-control datepicker" type="text" placeholder="<?php echo lang('form_date_of_birth') ?>"
                                    name="date_of_birth" autocomplete="off" value="<?= date('d/m/Y') ?>">
                            </div>
                    </div>
                    <div class="col-xs-6">
                        <div class="form-group">
                            <label><?php echo lang('form_gender'); ?></label>
                            <div>
                                <select name="gender" class="form-control">
                                    <option value="1"><?php echo lang('form_gender_male'); ?></option>
                                    <option value="0"><?php echo lang('form_gender_female'); ?></option>
                                </select>
                            </div>
                        </div>
                    </div> 
                    <div class="col-xs-6">
                        <div class="form-group">
                            <label><?php echo lang('form_address'); ?></label>
                            <input name="address" autocomplete="off" placeholder="<?php echo lang('form_address'); ?>"
                                   class="form-control" type="text"/>
                        </div>
                    </div>

                </div>
                <?php echo form_close() ?>
            </div>
            <div class="modal-footer v2">
                <?php $this->load->view($this->template_path . '_block/form_button') ?>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->
<!-- End Bootstrap modal -->
<script>
    var url_ajax_load_store = '<?php echo site_url('admin/store/ajax_load') ?>';
</script>