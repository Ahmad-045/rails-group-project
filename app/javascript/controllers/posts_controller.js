import { Controller } from '@hotwired/stimulus';

// Connects to data-controller="posts"
export default class extends Controller {
  // static targets = ['title', 'content', 'add'];

  // addPost() {
  //   this.titleTarget.value = '';
  //   this.contentTarget.value = '';
  // }

  static targets = [
    'post',
    'editForm',
    'title',
    'content',
    'newTitle',
    'newContent',
  ];

  edit(e) {
    e.preventDefault();
    let title = this.titleTarget.innerHTML;
    let content = this.contentTarget.innerHTML;

    this.newTitleTarget.value = title;
    this.newContentTarget.value = content;

    this.postTarget.classList.add('hidden');
    this.editFormTarget.classList.remove('hidden');
  }
}
