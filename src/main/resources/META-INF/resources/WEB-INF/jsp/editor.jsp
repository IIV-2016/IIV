<!-- action : 에디터에 입력한 html 코드를 전달받을 Controller페이지 URL -->
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Summernote</title>
  <link href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css" rel="stylesheet">
  <script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.4/jquery.js"></script> 
  <script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script> 
  <link href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.2/summernote.css" rel="stylesheet">
  <script src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.2/summernote.js"></script>
</head>
<body>
  <div id="summernote"><p>Hello Summernote</p></div>
  <span id="upload-file-message"></span>
<!-- 
  <script>

  $(document).ready(function() {

	  $('#summernote').summernote({
	      height: 300,
	      callbacks : {
	          onImageUpload: function(image) {
	              uploadImage(image[0]);
	          }
	      }
	  });

	  function uploadImage(image) {
	      var data = new FormData();
	      data.append("files",image);
	      $.ajax ({
	          data: data,
	          type: "POST",
	          url: "/uploadFile",
	          cache: false,
	          contentType: false,
	          processData: false,
	          enctype: 'multipart/form-data',
	          success: function(url) {
	              $("#upload-file-message").text("File succesfully uploaded");
	  			 console.log(image);
	              },
	              error: function(data) {
	                  console.log(data);
	                  $("#upload-file-message").text("File nono uploaded");
	                  }
	          });
	      }

	  });
-->
	  <script type="text/javascript">
      $(document).ready(function() {
        $('#summernote').summernote({
          height: 300,
          minHeight: null,
          maxHeight: null,
          focus: true,
          callbacks: {
            onImageUpload: function(files, editor, welEditable) {
              for (var i = files.length - 1; i >= 0; i--) {
                sendFile(files[i], this);
              }
            }
          }
        });
      });
      
      function sendFile(file, el) {
    	  data = new FormData();
    	  data.append("file", file);
        $.ajax({
          data: data,
          type: "POST",
          url: '/uploadFile',
          cache: false,
          contentType: false,
          enctype: 'multipart/form-data',
          processData: false,
          success: function(url) {
              $("#upload-file-message").text("File succesfully uploaded");
  			 console.log(file);
              },
              error: function(data) {
                  console.log(data);
                  $("#upload-file-message").text("File nono uploaded");
              }
        });
      }
  </script>
</body>
</html>