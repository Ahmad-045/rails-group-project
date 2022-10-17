import { Controller } from '@hotwired/stimulus';

// Connects to data-controller="comment"
export default class extends Controller {
  static targets = ['commentContent', 'newContent', 'comment', 'editForm'];

  edit(e) {
    e.preventDefault();
    let commentContentContent = this.commentContentTarget.innerHTML;

    this.newContentTarget.value = commentContentContent;

    this.commentTarget.classList.add('hidden');
    this.editFormTarget.classList.remove('hidden');
  }
}
