<!-- /header logged in-->

<div class ="header-container">
    <div class ="container">
        <div class ="col-lg-12 ">
            <div class ="row">
                <div class ="col-lg-3 col-md-3 col-sm-3 logo-holder">
                    <a href="<?php echo base_url(); ?>"><img src="<?php echo base_url('assets/img/user-reviews-icon.png'); ?>"/></a>
                </div>
                <div class ="col-lg-5 col-md5 col-sm-5 tagline-holder">
                    <p>
                       Discover the best solution for the products you're looking for! <br/>
                       All the reviews you need to make a decision.
                    </p>
                </div>
                <div class ="col-lg-4 col-md-4 col-sm-4  col-xs-6 sign-holder">
                    <?php if( get_loggedin() ): ?>
                        <span ><a href="<?php echo site_url('users/logout');?>">Logout <?php echo get_first_name();?></a></span>
                        <a href="<?php echo base_url("reviews/create"); ?>" class="btn btn-pink pull-right" >Write a Review</a>
                    <?php else: ?>
                        <span data-toggle="modal" href="#authentication-modal"><img src="<?php echo base_url('assets/img/sign-up-icon.png'); ?>" class ="sign-up-icon"/><a href="#" id='join-us-trigger'>Sign up</a></span>
                        <span data-toggle="modal" href="#authentication-modal"><a href="#" id='sign-in-trigger'>Sign in</a></span>
                        <a href="<?php echo base_url("reviews/create"); ?>" class="btn btn-pink pull-right" >Write a Review</a>
                    <?php endif;?>
                </div>
            </div>
        </div>
    </div>
</div>

<div class ="sub-header-container">
    <div class ="container">
        <div class ="col-lg-12 col-xs-12 col-md-12 col-sm-12">
            <div class ="row">
                <div class ="col-lg-3 col-md-3 col-sm-3 col-xs-4 browse-holder dropdown">
                            <a data-toggle="dropdown" href="#">
                                <img src="<?php echo base_url('assets/img/browse-icon.png'); ?>"/>
                                <strong>Browse Categories</strong>
                            </a>
                            <?php echo show_categories()?>
                </div>
                <div class ="col-lg-9 col-xs-8 col-md-9 col-sm-9 input-holder">
                    <?php echo form_open('search', array('method' => 'GET'));?>
                     <input type="text" class="form-control" name="key" value="" placeholder="Search" >
                     <?php echo form_close();?>
                </div>
            </div>
        </div>
    </div>
</div>
<!--  header/ -->