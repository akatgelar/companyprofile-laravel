@extends('admin.layouts.app')

@section('content')
    <div class="conatiner-fluid content-inner mt-n5 py-0" style="margin-top: 100px !important;">
        <div class="row">
            <div class="col-sm-12">
                <div class="card">
                    <div class="card-header">
                        <div class="flex-wrap d-flex justify-content-between align-items-center">
                            <div>
                                <div class="header-title">
                                    <h2 class="card-title">Blog</h2>
                                    <p>Create data</p>
                                </div>
                            </div>
                            <div>
                            </div>
                        </div>
                    </div>
                    <div class="card-body">
                        <form method="POST" class="needs-validation" id="form-data" name="form-data" novalidate>
                            {{ csrf_field() }}
                            <div class="form-group">
                                <label class="form-label" for="name">Title </label>
                                <input class="form-control" type="text" id="name" name="name" value="" placeholder="Enter Title" required>
                            </div>
                            <div class="form-group">
                                <label class="form-label" for="slug">Slug URL</label>
                                <input class="form-control" type="text" id="slug" name="slug" value="" placeholder="this-is-slug" required readonly style="background-color: lightgray;">
                            </div>
                            <div class="form-group">
                                <label class="form-label" for="slug">Datetime</label>
                                <input class="form-control" type="datetime-local" id="datetime" name="datetime" value="" placeholder="2024-01-31 12:12:12" required>
                            </div>
                            <div class="form-group">
                                <label class="form-label" for="image">Image</label>
                                <input class="form-control" type="file" id="file" name="file" required>
                                <input class="form-control" type="hidden" id="image" name="image" value="noimage.jpg" placeholder="image">
                                <br>
                                <img src="{{ asset('/uploads/noimage.jpg') }}" id="image-preview" name="image-preview" width="300px" style="border-radius: 2%;">
                            </div>
                            <div class="form-group">
                                <label class="form-label" for="description_short">Short Content</label>
                                <textarea class="form-control" id="description_short" name="description_short" rows="5" required></textarea>
                            </div>
                            <div class="form-group">
                                <label class="form-label" for="description_long">Long Content</label>
                                <textarea class="form-control" id="description_long" name="description_long" rows="5" style="display: none"></textarea>
                                <textarea class="form-control" id="content" name="content" rows="5" required></textarea>
                            </div>
                            <div class="form-group">
                                <label class="form-label" for="notes">Notes</label>
                                <textarea class="form-control" id="notes" name="notes" rows="3"></textarea>
                            </div>
                            <div class="form-group">
                                <div class="form-check form-switch">
                                    <input class="form-check-input" type="checkbox" id="is_active" name="is_active">
                                    <label class="form-check-label" for="is_active">Active Status</label>
                                </div>
                            </div>
                            <br><br>
                            <button type="submit" class="btn btn-success">Submit</button>
                            <a href="{{ URL::previous() }}" class="btn btn-danger">Cancel</a>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script>

        // handle slug
        $('#name').keyup(string_to_slug);

        function string_to_slug () {
            var judul = $('#name').val();
            var str = judul;

            str = str.replace('<br>', ' '); // trim
            str = str.replace(/^\s+|\s+$/g, ''); // trim
            str = str.toLowerCase();

            // remove accents, swap ñ for n, etc
            var from = "àáäâèéëêìíïîòóöôùúüûñç·/_,:;";
            var to   = "aaaaeeeeiiiioooouuuunc------";
            for (var i=0, l=from.length ; i<l ; i++) {
                str = str.replace(new RegExp(from.charAt(i), 'g'), to.charAt(i));
            }

            str = str.replace(/[^a-z0-9 -]/g, '') // remove invalid chars
                .replace(/\s+/g, '-') // collapse whitespace and replace by -
                .replace(/-+/g, '-'); // collapse dashes

            $('#slug').val(str);
            return str;
        }

        // handle upload image
        $('#file').change(function(){
            // preview
            $('#image-preview').attr('display', 'block');
            var oFReader = new FileReader();
            oFReader.readAsDataURL( $("#file")[0].files[0]);
            oFReader.onload = function(oFREvent) {
                $('#image-preview').attr('src', oFREvent.target.result);
            };

            // upload
            formdata = new FormData();
            if($(this).prop('files').length > 0) {
                file =$(this).prop('files')[0];
                formdata.append("image", file);
            }
            $.ajaxSetup({
                headers:{
                    'Authorization': "Bearer {{$session_token}}"
                }
            });
            $.ajax({
                url: '/api/upload',
                type: "POST",
                data: formdata,
                processData: false,
                contentType: false,
                success: function (result) {
                    if(result['success'] == true) {
                        $('#image').val('/uploads/300/' + result['data']['url']);
                    }
                }
            });
        });

        // handle wysiwyg
        tinymce.init({
            selector: 'textarea#content',
            plugins: 'code table lists',
            toolbar: "insertfile undo redo | styleselect | bold italic | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | link image responsivefilemanager | print preview media | forecolor backcolor emoticons | codesample",
            promotion: false,
            setup:function(ed) {
                ed.on('change', function(e) {
                    $('#description_long').val(ed.getContent());
                });
            }
        });

        // handle post
        $('#form-data').submit(false);
        $("#form-data").submit( function () {

            if($(this).valid()) {
                var form = $("#form-data").serializeArray();
                var formdata = {};
                $.map(form, function(n, i){
                    formdata[n['name']] = n['value'];
                });
                if ('is_active' in formdata) {
                    if (formdata['is_active'] == 'on') {
                        formdata['is_active'] = true;
                    } else {
                        formdata['is_active'] = false;
                    }
                } else {
                    formdata['is_active'] = false;
                }

                $.ajaxSetup({
                    headers:{
                        'Authorization': "Bearer {{$session_token}}"
                    }
                });
                $.ajax({
                    url: '/api/blog',
                    type: "POST",
                    data: JSON.stringify(formdata),
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    processData: false,
                    success: function (result) {
                        if(result['success'] == true) {
                            Swal.fire({
                                icon: "success",
                                title: "Success",
                                text: result['message'],
                                confirmButtonColor: '#3A57E8',
                            }).then((result) => {
                                window.location.replace("{{ url('/admin/blog') }}");
                            });
                        } else {
                            Swal.fire({
                                icon: "error",
                                title: "Oops...",
                                text: result['message'],
                                confirmButtonColor: '#3A57E8',
                            });
                        }
                    }
                });
            } else {
                Swal.fire({
                    icon: "error",
                    title: "Oops...",
                    text: "You must complete the entire form.",
                    confirmButtonColor: '#3A57E8',
                });
            }
            return false;
        });
    </script>
@endsection
