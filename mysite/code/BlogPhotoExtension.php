<?php

class BlogPhotoExtension extends DataExtension
{
        private static $has_one = array('BlogPhotos' => 'BlogPage');
}