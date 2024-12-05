
App = Ember.Application.create();

App.Router.map(function() {
  this.resource('posts', { path: '/' });
  this.resource('post', { path: '/posts/:post_id' });
  this.resource('edit-post', { path: '/posts/:post_id/edit' });
});

App.PostsRoute = Ember.Route.extend({
  model: function() {
    return this.store.findAll('post');
  }
});

App.PostRoute = Ember.Route.extend({
  model: function(params) {
    return this.store.findRecord('post', params.post_id);
  }
});

App.EditPostRoute = Ember.Route.extend({
  model: function(params) {
    return this.store.findRecord('post', params.post_id);
  }
});

App.Post = DS.Model.extend({
  title: DS.attr('string'),
  content: DS.attr('string'),
  published_at: DS.attr('date')
});

App.PostsController = Ember.Controller.extend({
  actions: {
    createPost: function() {
      var newPost = this.store.createRecord('post', {
        title: 'New Post',
        content: 'Content of the new post',
        published_at: new Date()
      });
      newPost.save();
    }
  }
});

App.PostController = Ember.Controller.extend({
  actions: {
    editPost: function() {
      this.transitionToRoute('edit-post', this.get('model'));
    },
    deletePost: function() {
      var post = this.get('model');
      post.destroyRecord();
      this.transitionToRoute('posts');
    }
  }
});

App.EditPostController = Ember.Controller.extend({
  actions: {
    savePost: function() {
      var post = this.get('model');
      post.save();
      this.transitionToRoute('post', post);
    }
  }
});