// Entry point for the build script in your package.json

import "@hotwired/turbo-rails"

import "./controllers"
import * as bootstrap from "bootstrap"

//enable bootstrap tooltips
const tooltipTriggerList = document.querySelectorAll('[data-bs-toggle="tooltip"]')
const tooltipList = [...tooltipTriggerList].map(tooltipTriggerEl => new bootstrap.Tooltip(tooltipTriggerEl))