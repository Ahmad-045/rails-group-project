import { Controller } from '@hotwired/stimulus';

// Connects to data-controller="posts"
export default class extends Controller {
  static targets = ['post', 'editForm'];

  edit(e) {
    e.preventDefault();
    e.stopPropagation();
    this.postTarget.classList.add('hidden');
    this.editFormTarget.classList.remove('hidden');
  }
}
