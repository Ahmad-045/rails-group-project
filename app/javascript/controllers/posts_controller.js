import { Controller } from '@hotwired/stimulus';

// Connects to data-controller="posts"
export default class extends Controller {
  static targets = ['title', 'content', 'add', 'show'];
  connect() {
    console.log('YES');
  }
  addPost(e) {
    e.preventDefault();
    let title = this.titleTarget.value;
    let content = this.contentTarget.value;
    console.log('Controller-->', title, content);
    this.addTarget.insertAdjacentHTML(
      'beforebegin',
      '<li>' + title + '----' + content + '</li>'
    );

    this.titleTarget.value = '';
    this.contentTarget.value = '';
  }
}
