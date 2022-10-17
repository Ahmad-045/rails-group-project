import { Controller } from '@hotwired/stimulus';

export default class extends Controller {
  static targets = ['modal', 'title', 'allGroups', 'joinedGroups', 'myGroups'];

  showModal() {
    this.modalTarget.classList.remove('hidden');
  }
  closeModal() {
    this.modalTarget.classList.add('hidden');
  }

  allGroups() {
    this.allGroupsTarget.classList.remove('hidden');
    this.joinedGroupsTarget.classList.add('hidden');
    this.myGroupsTarget.classList.add('hidden');
  }

  joinedGroups() {
    this.allGroupsTarget.classList.add('hidden');
    this.joinedGroupsTarget.classList.remove('hidden');
    this.myGroupsTarget.classList.add('hidden');
  }

  myGroups() {
    this.allGroupsTarget.classList.add('hidden');
    this.joinedGroupsTarget.classList.add('hidden');
    this.myGroupsTarget.classList.remove('hidden');
  }
}
