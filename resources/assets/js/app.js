require('./bootstrap');

window.Vue = require('vue');

import Vue from 'vue'
import VueRouter from 'vue-router'

Vue.use(VueRouter)

let Index = require('./components/Index.vue');
let Messanger = require('./components/Messanger.vue');
let Notification = require('./components/Notification.vue');
let Profile = require('./components/Profile.vue');
let ProfileOther = require('./components/ProfileOther.vue');
let Chat = require('./components/Chat.vue');
let UploadImage = require('./components/UploadImage.vue');

let myfooter = require('./components/Footer.vue');
let myheader = require('./components/Header.vue');


const routes = [
  { path: '/', component: Index },
  { path: '/messanger', component: Messanger },
  { path: '/notification', component: Notification },
  { path: '/profile', component: Profile },
  { path: '/upload', component: UploadImage},
  { path: '/friends/:id/:auth_id', component: ProfileOther },
  { path: '/chat/:id/:auth_id', component: Chat },
]

const router = new VueRouter({
	mode: 'history',
  	routes // short for `routes: routes`
})


const app = new Vue({
    el: '#app',
    router,
    components:{myheader,myfooter,Index}
});

