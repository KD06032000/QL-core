options_filter_select2 = {
    school_filter: {
        selector: $('select[name="school_id"]'),
        placeholder: 'Chọn Danh mục',
        multiple: false,
        hide_search: true,
        url: url_ajax_load_students
    },
};

options_select2 = {
    school_id: {
        selector: $('select[name="school_id[]"]'),
        placeholder: 'Chọn danh mục',
        multiple: false,
        hide_search: true,
        url: url_ajax_load_students
    },
}
$(function () {
    //load lang
    load_lang(controller);
    DATATABLE.init();
    SEO.init();
});

//ajax luu form
function save()
{
    let url = save_method === 'add' ? url_ajax_add : url_ajax_update;
    AJAX.save(url, $('#form'), reload_table);
}