<div class="page-title">

    <div class="breadcrumb-env">
        <ul class="user-info-menu left-links list-inline list-unstyled">
            <li class="hidden-sm hidden-xs">
                <a href="#" data-toggle="sidebar">
                    <i class="fa-bars"></i>
                </a>
            </li>
        </ul>
        <ol class="breadcrumb bc-1" >
            <li>
                <a href="<?php echo site_url('admin/dashboard') ?>"><i class="fa-home"></i> Home</a>
            </li>
            <li class="active">
                <strong> Videos </strong>
            </li>
        </ol>

    </div>

</div>
<!-- Admin Table-->
<div class="panel panel-default">
    <div class="panel-heading">
        <h3 class="panel-title">Video Details</h3>
    </div>
    <div class="panel-body">
        <?php if (validation_errors()) : ?>
            <div class="col-md-12">
                <div class="alert alert-danger">
                    <?php echo validation_errors() ?>
                </div>
            </div>
        <?php endif ?>
        <form role="form" class="form-horizontal" role="form" method="post" enctype="multipart/form-data">

            <div class="form-group">
                <label class="col-sm-2 control-label" for="field-1">Video Title </label>

                <div class="col-sm-10">
                    <input type="text" class="form-control" placeholder="Title" name="title"
                           value="<?php echo set_value('title', $item->title) ?>">
                </div>
            </div>
            <div class="form-group-separator"></div>
            
 <div class="form-group">
                <label class="col-sm-2 control-label" for="field-1">Youtube Playback ID </label>

                <div class="col-sm-10">
                    <input type="text" class="form-control" placeholder="e.g vsypFJ5mNw0" name="link"
                           value="<?php echo set_value('link', $item->link) ?>">
                </div>
            </div>
            <div class="form-group-separator"></div>

         

            <div class="form-group">
                <label class="col-sm-2 control-label"></label>

                <div class="col-sm-10">
                    <input type="submit" class="btn btn-secondary " name="submit" value="Save Video">
                    <a href="<?php echo site_url('admin/videos/index'); ?>" class="btn btn-danger">Cancel</a>

                </div>
            </div>


        </form>

    </div>
</div>

