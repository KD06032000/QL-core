<section class="homepage-banner">
    <div class="banner-slider">

        <?php if (!empty($banner)) foreach ($banner as $item) { ?>
            <div class="banner-item flex-end relative">
                <div class="banner-content height-100">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-5">
                                <div class="banner-text">
                                    <div class="banner-inner">
                                        <div class="comming">
                                            <span class="text-blue"><?= str_replace($item->title_highlight, ' ', $item->title) ?></span>
                                            <span class="text-grown"><?= $item->title_highlight ?></span>
                                        </div>
                                        <div class="desc"><?= $item->description ?></div>
                                        <ul>
                                            <?php if (!empty($item->detail)) foreach (json_decode($item->detail) as $i) { ?>
                                                <li>
                                                    <a href="javascript:;" title="">
                                                        <span>
                                                            <img src="<?= resizeImage($i->image) ?>" alt="<?= $i->name ?>">
                                                        </span>
                                                        <?= $i->name ?>
                                                    </a>
                                                </li>
                                            <?php } ?>
                                        </ul>
                                        <div class="mgt-30">
                                            <a target="_blank" href="<?= !empty($item->url) ? $item->url : 'javascript:;' ?>" title=""
                                               class="btn-bg">
                                                Chi tiết
                                                <i class="fas fa-long-arrow-alt-right"></i>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="banner-image"><img src="<?= resizeImage($item->thumbnail, '1189x816') ?>"
                                               alt="<?= $item->title ?>"></div>
            </div>
        <?php } ?>
    </div>
</section>