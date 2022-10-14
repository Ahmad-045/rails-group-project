import { Controller } from '@hotwired/stimulus';

export default class extends Controller {
  static targets = ['modal', 'title'];

  connect() {
    this.titleTarget.value = '';
  }

  showModal() {
    this.modalTarget.classList.remove('hidden');
  }
  closeModal() {
    this.modalTarget.classList.add('hidden');
  }
}
