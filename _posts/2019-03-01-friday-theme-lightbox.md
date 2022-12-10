---
title:  How to set up the Masonry Layout with an Image Lightbox
tags:
  - HTML
  - images
  - Markdown
  - Liquid
  - Image Gallery
images:
  - https://images.unsplash.com/photo-1421789665209-c9b2a435e3dc?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=5b1016b885e7438c4633109d77368d4d&auto=format&fit=crop&w=1651&q=80
  - https://images.unsplash.com/photo-1445962125599-30f582ac21f4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=38c096c472ba616dc4e8e76a8069c97a&auto=format&fit=crop&w=668&q=80
---

Here's an example that extends the Masonry layout to add a Lightbox to show each image. 

<!--more-->

As before, to automate the layout, a list of images is stored in a frontmatter variable. The post then loops over that list to output the cards. This is easier than copy-pasting the same HTML for each image.

Some Bootstrap HTML is then included in the page to create the lightbox. This is done using the modal and some simple CSS and JS to make it all work together. To have a look at how this works, look at this page in the [GitHub repo](https://github.com/sfreytag/friday-theme/tree/master/_posts).

Here's the card columns in action. Click each image to open it in a lightbox.

<div class="card-columns">
    {% for img in page.images %}
    <div class="card" data-toggle="modal" data-target="#exampleModal" data-img="{{ img }}">
        <img class="card-img-top" src="{{ img }}" />
    </div>
    {% endfor %}
</div>

(The photos are from [Unsplash](http://www.unsplash.com)!)

<div class="modal fade" id="exampleModal">
  <div class="modal-dialog modal-lg modal-dialog-centered">
    <div class="modal-content">
      <div class="modal-body">
        <img class="modal-img w-100" />
      </div>
    </div>
  </div>
</div>

<script type="text/javascript">
  $(document).ready(function() {
    $('#exampleModal').on('show.bs.modal', function (event) {
      var button = $(event.relatedTarget)
      var img = button.data('img')
      var modal = $(this)
      modal.find('.modal-img').attr('src', img)
    })
  })
</script>



