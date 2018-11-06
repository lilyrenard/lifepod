$(function() {
      console.log('before ok')
      if($.fn.cloudinary_fileupload !== undefined) {
        console.log('ok')
        $("input.cloudinary-fileupload[type=file]").cloudinary_fileupload();
      }
    });

    function cloudinaryPreview() {
      $('.cloudinary-fileupload').bind('cloudinarydone', function(e, data) {
        console.log(data)
        $('.cadre-photo').html(
          $.cloudinary.image(data.result.public_id,
            { format: data.result.format, version: data.result.version,
              crop: 'fill', width: 150, height: 100 })
        );
        $('.image_id').val(data.result.public_id);
        return true;
      });
    }
    cloudinaryPreview()
