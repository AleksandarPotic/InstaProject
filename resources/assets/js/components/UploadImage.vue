<template>
    <div class="container" style="margin-top: 130px;">
        <div class="row" style="margin-left:40px;">
            <div class="col-lg-5 offset-lg-3" style="display: none;" id="alert_message">
                <div class="alert alert-danger text-center" role="alert">
                    <b>Successfully added post!</b>
                </div>
            </div>
            <div class="col-lg-8 offset-lg-2">
                <img :src="avatar" alt="" width="620px;" height="410px">
            </div>
            <div class="col-lg-5 offset-lg-3 text-lg-center" style="margin-top: 5px; margin-bottom: 130px;">
                <form @submit.prevent="uploadPost()">
                    <input type="file" name="image" id="image_post" @change="getImage" required>
                    <input type="text" class="form-control" name="location" v-model="location" placeholder="Location" required><br>
                    <textarea name="description" class="form-control" v-model="description" placeholder="Description" required></textarea><br>
                    <button class="btn btn-default radius btn-block" style="background-color: white; border: 1px solid gray;">Post</button>
                </form>
            </div>
        </div>
    </div>
</template>

<script>
    export default {
        data() {
            return {
                avatar: null,
                location: null,
                description: null
            }
        },
        props: {
            auth_user_id: Number
        },

        methods: {
            getImage(e) {
                let image =  e.target.files[0];
                let reader = new FileReader();
                reader.readAsDataURL(image);
                reader.onload = e => {
                    this.avatar = e.target.result;
                    $("#alert_message").hide();
                }
            },
            uploadPost() {
                var img = $("#image_post").val();
                axios.post('api/posts',{
                    'auth_user_id': this.auth_user_id,
                    'image': this.avatar,
                    'description': this.description,
                    'location': this.location
                })
                    .then(data => {
                        this.avatar = '';
                        this.description = null;
                        this.location = null;
                        $("#alert_message").show();
                    })
            }
        }
    }

</script>