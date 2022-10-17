import { Controller } from '@hotwired/stimulus';

export default class extends Controller {
  static targets = [
    'modal',
    'title',
    // 'allGroups',
    'joinedGroups',
    'myGroups',
  ];

  showModal() {
    this.modalTarget.classList.remove('hidden');
  }
  closeModal() {
    this.modalTarget.classList.add('hidden');
  }

  joinedGroups(e) {
    // this.allGroupsTarget.classList.add('hidden');
    console.log(e);
    this.joinedGroupsTarget.classList.remove('hidden');
    this.myGroupsTarget.classList.add('hidden');
  }

  myGroups(e) {
    console.log(e);
    // this.allGroupsTarget.classList.add('hidden');
    this.joinedGroupsTarget.classList.add('hidden');
    this.myGroupsTarget.classList.remove('hidden');
  }
}
