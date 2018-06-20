<template>
    <div class="container">
        <div class="row">
            <div class="col-lg-1 offset-lg-11 text-right" style="margin-bottom: 5px; margin-top: -5px;">
                <h5 style="cursor: pointer;" data-dismiss="modal"><i class="fas fa-times"></i></h5>
            </div>
            <div class="col-lg-12" style="overflow: auto; width: 100%; height: 500px;">
                <template v-for="like in post_likes">
                    <div class="row">
                        <div class="col-lg-8">
                            <h6>{{ like.user_nick_name }}</h6>
                        </div>
                        <div class="col-lg-4">
                            <button class="btn btn-primary radius btn-block">Follow</button>
                        </div>
                    </div>
                    <hr>
                </template>
            </div>
        </div>
    </div>
</template>

<script>
    export default {
        props:{
            post_likes: Array
        }
    }
</script>