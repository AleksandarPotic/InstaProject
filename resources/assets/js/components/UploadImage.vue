<template>
    <div class="container" style="margin-top: 130px;">
        <div class="row" style="margin-left:40px;">
            <div class="col-lg-5 offset-lg-3" style="display: none;" id="alert_message">
                <div class="alert alert-danger text-center" role="alert">
                    <b>Successfully added post!</b>
                </div>
            </div>
            <div class="col-lg-5 offset-lg-2 image_crop">
                <vue-avatar
                        :width=620
                        :height=410
                        ref="vueavatar"
                        @vue-avatar-editor:image-ready="onImageReady"
                        :image="avatar"
                >
                </vue-avatar>
            </div>
            <div class="col-lg-5 offset-lg-4 image_crop">
                <vue-avatar-scale
                        ref="vueavatarscale"
                        @vue-avatar-editor-scale:change-scale="onChangeScale"
                        :width=250
                        :min=1
                        :max=3
                        :step=0.02
                >
                </vue-avatar-scale>
            </div>
            <div class="col-lg-5 offset-lg-3 text-lg-center" style="margin-top: 5px; margin-bottom: 130px;">
                <form @submit.prevent="uploadPost()">
                    <input type="text" class="form-control" name="location" v-model="location" placeholder="Location" required><br>
                    <textarea name="description" class="form-control" v-model="description" placeholder="Description" required></textarea><br>
                    <button class="btn btn-default radius btn-block" v-if="image_status" style="background-color: white; border: 1px solid gray;">Post</button>
                </form>
            </div>
        </div>
    </div>
</template>

<script>
    import Vue from 'vue'
    import VueAvatar from '../vue-avatar-editor/src/components/VueAvatar'
    import VueAvatarScale from '../vue-avatar-editor/src/components/VueAvatarScale'

    export default {
        components: {
            VueAvatar,
            VueAvatarScale
        },
        data() {
            return {
                avatar: null,
                location: null,
                description: null,
                image_status: false
            }
        },
        props: {
            auth_user_id: Number
        },

        methods: {

            onChangeScale(scale) {
                this.$refs.vueavatar.changeScale(scale)
            },
            saveClicked() {
                var img = this.$refs.vueavatar.getImageScaled()
                // use img
            },
            onImageReady(scale) {
                this.$refs.vueavatarscale.setScale(scale);
                this.image_status = true;
            },
            /*
            getImage(e) {
                let image =  e.target.files[0];
                let reader = new FileReader();
                reader.readAsDataURL(image);
                reader.onload = e => {
                    this.avatar = e.target.result;
                    $("#alert_message").hide();
                }
            },
            */
            uploadPost() {
                var img = this.$refs.vueavatar.getImageScaled();
                //var img = $("#image_post").val();
                this.avatar = img.toDataURL();

                axios.post('api/posts',{
                    'auth_user_id': this.auth_user_id,
                    'image': this.avatar,
                    'description': this.description,
                    'location': this.location
                })
                    .then(data => {
                        this.avatar = '';
                        this.$refs.vueavatarscale.setScale();
                        this.description = null;
                        this.location = null;
                        this.$toasted.show('Successfully added post.',{type:'success'}).goAway(3000);
                    })
            }
        }
    }

</script>