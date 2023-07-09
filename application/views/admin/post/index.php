<?php

defined('BASEPATH') or exit('No direct script access allowed');
?>
<!-- Main content -->
<section class="content">
    <div class="row">
        <div class="col-xs-12">
            <div class="box">
                <div class="box-body">
                    <div class="row">
                        <div class="col-sm-7 col-xs-12">
                            <div class="row">
                                <form action="" id="form_filter" method="post">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <div class="input-group">
                                                <span class="input-group-addon"><i class="fa fa-filter"></i></span>
                                                <select class="form-control select2 item"
                                                        data-place="Danh mục bài viết" name="category_id"
                                                        style="max-width: 100%;" tabindex="-1" aria-hidden="true">
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <?php $this->load->view($this->template_path . "_block/where_status") ?>
                                    </div>
                                </form>
                            </div>
                        </div>
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
                    <form action="" id="form-table" method="post">
                        <input type="hidden" value="0" name="msg"/>
                        <table id="data-table" class="table table-bordered table-striped">
                            <thead>
                            <tr>
                                <th width="60">
                                    <input type="checkbox" name="select_all" value="1" id="data-table-select-all">
                                </th>
                                <th width="60">ID</th>
                                <th><?php echo lang('text_title'); ?></th>
                                <th><?php echo lang('text_featured'); ?></th>
                                <th><?php echo lang('text_status'); ?></th>
                                <th><?php echo lang('text_sort'); ?></th>
                                <th><?php echo lang('text_created_time'); ?></th>
                                <?php showColumnAction(); ?>
                            </tr>
                            </thead>
                        </table>
                    </form>
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
    <div class="modal-dialog" style="width: 90%">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                            aria-hidden="true">&times;</span></button>
                <h3 class="modal-title" id="title-form"><?= lang('heading_title_add'); ?></h3>
            </div>
            <div class="modal-body form">
                <?= form_open('', ['id' => 'form', 'class' => '']) ?>
                <input type="hidden" name="id" value="0">
                <!-- Custom Tabs -->
                <div class="nav-tabs-custom">
                    <ul class="nav nav-tabs">
                        <li class="active">
                            <a href="#tab_language" data-toggle="tab"><?php echo lang('tab_language'); ?></a>
                        </li>
                        <li>
                            <a href="#tab_info" data-toggle="tab"><?php echo lang('tab_info'); ?></a>
                        </li>
                        <li>
                            <a href="#tab_image" data-toggle="tab"><?php echo lang('tab_image'); ?></a>
                        </li>
                    </ul>
                    <div class="tab-content">

                        <div class="tab-pane active" id="tab_language">
                            <?php
                            $list_lang = [
                                ['name' => 'title', 'title' => 'Tiêu đề', 'type' => 'text', 'required' => true],
                                ['name' => 'description', 'title' => 'Tóm tắt', 'type' => 'textarea', 'required' => false, 'tinymce' => false],
                                ['name' => 'content', 'title' => 'Nội dung', 'type' => 'textarea', 'required' => false, 'tinymce' => true],
                            ];

                            $this->load->view($this->template_path . '_block/_item_form_lang', ['list' => $list_lang, 'seo' => true]);
                            ?>
                        </div>

                        <div class="tab-pane" id="tab_info">
                            <?php
                            $list = [
                                ['name' => 'category_id[]', 'title' => 'Danh mục', 'type' => 'select2', 'required' => true],
                                ['name' => 'displayed_time', 'title' => 'Ngày hiển thị', 'class' => 'datepicker', 'type' => 'text', 'required' => false],
                                ['name' => 'order', 'title' => 'Sắp xếp', 'class' => '', 'type' => 'number', 'required' => false],
                                ['name' => 'status', 'title' => 'Trạng thái', 'type' => 'status', 'required' => false],
                                ['name' => 'tag_id[]', 'title' => 'Thẻ', 'type' => 'select2', 'required' => false],
                            ];
                            $this->load->view($this->template_path . '_block/_item_form', ['list' => $list, 'class' => 'col-md-6']);
                            ?>
                        </div>

                        <div class="tab-pane" id="tab_image">
                            <div class="box-body">
                                <?php $this->load->view($this->template_path . '_block/input_multiple_media') ?>
                            </div>
                        </div>

                    </div>

                    <!-- /.tab-content -->
                </div>
                <!-- nav-tabs-custom -->
                <?= form_close() ?>
            </div>
            <div class="modal-footer">
                <?php $this->load->view($this->template_path . '_block/form_button') ?>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->
<!-- End Bootstrap modal -->
<script>
    var url_ajax_load_category = '<?= site_url('admin/category/ajax_load/post') ?>';
    var url_ajax_load_tag = '<?= site_url('admin/tag/ajax_load') ?>';
    var url_ajax_load = '<?= site_url('admin/category/ajax_load/post') ?>';
</script>
