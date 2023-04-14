<footer class="pd-30">
    <div class="container">
        <div class="row">
            <div class="col-md-3 company-info">
                <div class="logo-ft">
                    <a href="" title="">
                        <img class="lazy" src="<?= getThumbLazy() ?>" data-src="<?= resizeImage(SiteSettings::item('logo_ft')) ?>" alt="ghn">
                    </a>
                </div>
                <?= SiteSettings::item('description_web') ?>
            </div>
            <div class="col-md-2 col-6 ft-menu">
                <h4>Gia đình GNH</h4>
                <?= menuFooter1('goto_tab') ?>
            </div>
            <div class="col-md-2 col-6 ft-menu">
                <h4>Hệ sinh thái GNH</h4>
                <?= menuFooter2('goto_tab') ?>
            </div>
            <div class="col-md-2 col-6 ft-menu">
                <h4>Dự án</h4>
                <?= menuFooter3() ?>
            </div>
            <div class="col-md-3 col-12 ft-menu">
                <h4>Liên hệ</h4>
                <ul>
                    <li>A: <?= SiteSettings::item_lang('company', $this->lang_code, ['address']) ?></li>
                    <li>M: <?= SiteSettings::item('phone') ?></li>
                    <li>E: <?= SiteSettings::item('email_site') ?></li>
                </ul>
            </div>
        </div>
    </div>
</footer>
<section class="ft-copyright">
    <div class="container">
        <div class="flex-center-between">
            <div class="copyright">Copyright © 2021 <a href="<?= site_url() ?>" title="">GNH.VN</a>. Designed by <a target="_blank" href="" title="">SSC</a>
            </div>
            <div class="ft-social flex-center-end">
                <a target="_blank" href="<?= SiteSettings::item('social_facebook_link') ?>" title=""><img
                            class="lazy" src="<?= getThumbLazy() ?>" data-src="public/images/logo-fb.png" alt="facebook"> </a>
                <a target="_blank" href="<?= SiteSettings::item('social_youtube_link') ?>" title=""><img
                            class="lazy" src="<?= getThumbLazy() ?>" data-src="public/images/logo-yt.png" alt="youtube"> </a>
                <a target="_blank" href="<?= SiteSettings::item('social_tiktok_link') ?>" title=""><img
                            class="lazy" src="<?= getThumbLazy() ?>" data-src="public/images/logo-tik.png" alt="tiktok"> </a>
                <a target="_blank" href="<?= SiteSettings::item('social_zalo_link') ?>" title=""><img
                            class="lazy" src="<?= getThumbLazy() ?>" data-src="public/images/logo-zalo.png" alt="zalo"> </a>
            </div>
        </div>
    </div>
</section>
