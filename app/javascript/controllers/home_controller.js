import { Controller } from '@hotwired/stimulus';

export default class extends Controller {
  static targets = [
    'modal',
    'title',
    'allGroups',
    'joinedGroups',
    'myGroups',
    'buttons',
  ];

  connect() {
    console.log(this.buttonsTarget.children);
  }
  showModal() {
    this.modalTarget.classList.remove('hidden');
  }
  closeModal() {
    this.modalTarget.classList.add('hidden');
  }

  joinedGroups(e) {
    e.target.classList.add('opacity-100');
    this.allGroupsTarget.classList.add('hidden');
    this.joinedGroupsTarget.classList.remove('hidden');
    this.myGroupsTarget.classList.add('hidden');
  }

  allGroups(e) {
    e.target.classList.add('opacity-100');
    console.log(e);
    this.allGroupsTarget.classList.remove('hidden');
    this.joinedGroupsTarget.classList.add('hidden');
    this.myGroupsTarget.classList.add('hidden');
  }

  myGroups(e) {
    e.target.classList.add('opacity-100');
    this.allGroupsTarget.classList.add('hidden');
    this.joinedGroupsTarget.classList.add('hidden');
    this.myGroupsTarget.classList.remove('hidden');
  }
}
