document.addEventListener('alpine:init', () => {
    Alpine.data('datos', () => ({
        usuarios: [],
        toggle() {},
    }))
})