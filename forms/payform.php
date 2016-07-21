<?php 
 $get_template_directory=getcwd() . "/template_front";
 require_once($get_template_directory.'/head_tags.php');
 ?>
  
  <!-- BEGAIN PRELOADER -->
 <!--  <div id="preloader">
   <div id="status">&nbsp;</div>
 </div> -->
  <!-- END PRELOADER -->

  <!-- SCROLL TOP BUTTON -->
  <a class="scrollToTop" href="#"><i class="fa fa-angle-up"></i></a>
  <!-- END SCROLL TOP BUTTON -->

  <!-- Start header -->
 <?php require_once($get_template_directory.'/contact_header.php'); ?>
  <!-- End header -->
  
  <!-- Start login modal window -->
  <?php require_once($get_template_directory.'/header_contact_form.php'); ?>
  <!-- End login modal window -->

  <!-- BEGIN MENU -->
 <?php require_once($get_template_directory.'/header_navigation.php'); ?>
  <!-- END MENU --> 
  
  <!-- Start single page header -->
  <section id="single-page-header">
    <div class="overlay">
      <div class="container">
        <div class="row">
          <div class="col-md-6 col-sm-6 col-xs-12">
            <div class="single-page-header-left">
              <h2>Blog Single</h2>
              <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry</p>
            </div>
          </div>
          <div class="col-md-6 col-sm-6 col-xs-12">
            <div class="single-page-header-right">
              <ol class="breadcrumb">
                <li><a href="#">Home</a></li>
                <li class="active">Blog Single</li>
              </ol>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
  <!-- End single page header -->
  
  <!-- Start blog archive -->
  <section id="blog-archive">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <div class="blog-archive-area">
            <div class="row">
              <div class="col-md-8">
                <div class="blog-archive-left">
                  <!-- Start blog news single -->
                  <article class="blog-news-single">
                 

                    <?php require_once('form.php'); ?>
                   

                      
              
                      
             
                  </article>
                  
                </div>
              </div>
             <?php require_once($get_template_directory.'/side_bar.php'); ?>
            </div>
          </div>
        </div>
      </div>
    </div>  
  </section>
  <!-- End blog archive -->

 <!-- Start subscribe us -->
  <?php require_once($get_template_directory.'/subscribe_section.php'); ?>
  
  <!-- End subscribe us -->

  <!-- Start footer -->
  <?php require_once($get_template_directory.'/footer.php'); ?>
  <!-- End footer -->

<?php require_once($get_template_directory.'/jquery_include.php'); ?>