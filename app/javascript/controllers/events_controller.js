import { Controller } from 'stimulus'

export default class extends Controller {
  static values = {
    operation: String,
    document: Boolean,
    window: Boolean,
    id: Number
  }
  static targets = ['before', 'element', 'after']

  initialize () {
    if (this.documentValue) this.target = document
    if (this.windowValue) this.target = window
    if (!this.documentValue && !this.windowValue)
      this.target = this.elementTarget
    this.operation = this.operationValue.replaceAll('_', '-')
  }

  connect () {
    this.target.addEventListener(
      `cable-ready:before-${this.operation}`,
      this.beforeHandler
    )
    this.target.addEventListener(
      `cable-ready:after-${this.operation}`,
      this.afterHandler
    )
  }

  disconnect () {
    this.target.removeEventListener(
      `cable-ready:before-${this.operation}`,
      this.beforeHandler
    )
    this.target.removeEventListener(
      `cable-ready:after-${this.operation}`,
      this.afterHandler
    )
  }

  beforeHandler = e => {
    if (this.hasIdValue && e.detail.id && e.detail.id !== this.idValue) return
    if (this.hasBeforeTarget)
      this.beforeTarget.innerHTML = "<i class='fas fa-check'></i>"
  }

  afterHandler = e => {
    if (this.hasIdValue && e.detail.id && e.detail.id !== this.idValue) return
    if (this.hasAfterTarget)
      this.afterTarget.innerHTML = "<i class='fas fa-check'></i>"
  }
}
