<header>
    <section class="header relative">
        <div class="container">
            <div class="row">
                <div class="col-md-2">
                    <div class="logo">
                        <a href="<?= site_url() ?>" title="">
                            <img src="<?= resizeImage(SiteSettings::item('logo')) ?>" alt="gnh">
                        </a>
                        <a title="" href="#menu" class="btn-menu visible-mobile"><img src="public/images/menu.png" class="img-fluid" alt="menu"></a>
                    </div>
                </div>
                <div class="col-md-10">
                    <div class="header-nav">
                        <?= menuPrimaryLeft() ?>
                    </div>
                </div>
            </div>
        </div>
    </section>
</header>