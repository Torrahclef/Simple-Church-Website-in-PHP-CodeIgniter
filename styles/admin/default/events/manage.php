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
                <a href="<?php echo site_url('admin/dashboard') ?>"><i class="fa-home"></i>Home</a>
            </li>
            <li class="active">
                <strong> Event</strong>
            </li>
        </ol>

    </div>

</div>
<!-- Admin Table-->
<div class="panel panel-default">
    <div class="panel-heading">
        <h3 class="panel-title">Update Event</h3>
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
                <label class="col-sm-2 control-label" for="field-1">Meta Keywords </label>

                <div class="col-sm-10">
                    <input type="text" class="form-control" placeholder="Event Kewords e.g Conference" name="keyword"
                           value="<?php echo set_value('keyword', $item->keyword) ?>">
                </div>
            </div>
            <div class="form-group-separator"></div>
            
             <div class="form-group">
                <label class="col-sm-2 control-label" for="field-1">Meta Description</label>

                <div class="col-sm-10">
                   <textarea style=""class="form-control" placeholder="Meta Description" name="short"><?php echo set_value('short', $item->short) ?></textarea>
                </div>
            </div>
            <div class="form-group-separator"></div>

            <div class="form-group">
                <label class="col-sm-2 control-label" for="field-1">Title </label>

                <div class="col-sm-10">
                    <input type="text" class="form-control" placeholder="Title" name="title"
                           value="<?php echo set_value('title', $item->title) ?>">
                </div>
            </div>
             <div class="form-group">
                <label class="col-sm-2 control-label" for="field-1">Place </label>

                <div class="col-sm-10">
                    <input type="text" class="form-control" placeholder="Location of Event" name="place"
                           value="<?php echo set_value('place', $item->place) ?>">
                </div>
            </div>
            <div class="form-group-separator"></div>
              
            <div class="form-group">
                <label class="col-sm-2 control-label" for="field-1">Description</label>

                <div class="col-sm-10">
                    <textarea style="height: 250px;"class="form-control" placeholder="Description" name="description" id="editor1"><?php echo set_value('description', $item->description) ?></textarea>
                </div>
            </div>
            <div class="form-group-separator"></div>

          <div class="form-group">
                <label class="col-sm-2 control-label" for="field-1">Event Date </label>

                <div class="col-sm-10">
                    <input type="date" class="form-control" placeholder="Date" name="date"
                           value="<?php echo set_value('date', $item->date) ?>">
                </div>
            </div>
             <div class="form-group-separator"></div>

          
            <div class="form-group">
                <label class="col-sm-2 control-label" for="field-1">Image</label>

                <div class="col-sm-10">
                    <input class="form-control" type="file" name="image" >
                </div>
            </div>
            <div class="form-group-separator"></div>
            <div class="form-group">
                <label class="col-sm-2 control-label"></label>

                <div class="col-sm-10">
                    <input type="submit" class="btn btn-secondary " name="submit" value="Submit">
                    <a href="<?php echo site_url('admin/news/index'); ?>" class="btn btn-danger">Cancel</a>
                </div>
            </div>


        </form>

    </div>
</div>

<script src="<?php echo STYLE_JS ?>/ckeditor/ckeditor.js" type="text/javascript"></script>
<script>
    $(document).ready(function () {
        CKEDITOR.replace('editor1');
    });
</script>

