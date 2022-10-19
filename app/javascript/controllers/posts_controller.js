import { Controller } from '@hotwired/stimulus';

// Connects to data-controller="posts"
export default class extends Controller {
  static targets = ['post', 'editForm', 'listPost'];

  edit(e) {
    e.preventDefault();
    e.stopPropagation();

    this.postTarget.classList.add('hidden');
    this.editFormTarget.classList.remove('hidden');
  }

  save(e) {
    console.log(e);
    const [data, status, xhr] = e.detail;
    // console.log(data);
    // console.log(status);
    // console.log(xhr);
    // this.postTarget.classList.remove('hidden');
    // this.editFormTarget.classList.add('hidden');
  }
}
