import { Controller } from '@hotwired/stimulus';

// Connects to data-controller="posts"
export default class extends Controller {
  static targets = [
    'post',
    'editForm',
    'title',
    'content',
    'formTitle',
    'formContent',
    'postForm',
  ];

  edit(e) {
    e.preventDefault();
    e.stopPropagation();

    this.postTarget.classList.add('hidden');
    this.editFormTarget.classList.remove('hidden');
  }

  save(e) {
    e.preventDefault();
    e.stopPropagation();

    this.titleTarget.innerHTML = this.formTitleTarget.value;
    this.contentTarget.innerHTML = this.formContentTarget.value;

    this.postTarget.classList.remove('hidden');
    this.editFormTarget.classList.add('hidden');

    this.postFormTarget.submit();
  }
}
