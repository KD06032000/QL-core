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
                            <th><?php echo lang('text_malop'); ?></th>
                            <th><?php echo lang('text_name'); ?></th>
                            <th><?php echo lang('text_siso'); ?></th>
                            <th><?php echo lang('text_active'); ?></th>
                            <th><?php echo lang('text_subject'); ?></th>
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
                            <label>Mã lớp học <?php showRequiredField() ?></label>
                            <input name="malop" autocomplete="off" placeholder="<?php echo lang('form_malop'); ?>"
                                   class="form-control" type="text"/>
                        </div>
                    </div>
                    <div class="col-xs-6">
                        <div class="form-group">
                            <label><?php echo lang('form_name'); ?>*</label>
                            <input name="name" autocomplete="off" placeholder="<?php echo lang('form_name'); ?>" class="form-control"
                                   type="text"/>
                        </div>
                    </div>
                    <div class="col-xs-6">
                        <div class="form-group">
                            <label><?php echo lang('form_siso'); ?></label>
                            <input name="siso" autocomplete="off" placeholder="<?php echo lang('form_siso'); ?>"
                                   class="form-control" type="text"/>
                        </div>
                    </div>
                    <div class="col-xs-6">
                        <div class="form-group">
                            <label><?php echo lang('form_active')?></label>
                            <div>
                                <select name="active" class="form-control">
                                    <option value="1">Mở lớp</option>
                                    <option value="0">Đóng lớp</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="col-xs-6">
                        <div class="form-group">
                            <label><?php echo lang('form_subject'); ?></label>
                            <input name="subject" autocomplete="off" placeholder="<?php echo lang('form_subject'); ?>"
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
</div>
<!-- /.modal -->
<!-- End Bootstrap modal -->
<script>
    var url_ajax_load_store = '<?php echo site_url('admin/store/ajax_load') ?>';
</script>