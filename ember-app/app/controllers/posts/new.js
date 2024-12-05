import Controller from '@ember/controller';
import { action } from '@ember/object';

export default class PostsNewController extends Controller {
  @action
  createPost(event) {
    event.preventDefault();
    let newPost = this.store.createRecord('post', this.model);
    newPost.save().then(() => {
      this.transitionToRoute('posts');
    });
  }
}
