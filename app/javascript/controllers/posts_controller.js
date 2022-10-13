import { Controller } from '@hotwired/stimulus';

// Connects to data-controller="posts"
export default class extends Controller {
  static targets = ['title', 'content', 'add'];

  addPost() {
    this.titleTarget.value = '';
    this.contentTarget.value = '';
  }
}
