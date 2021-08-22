const on_load = () => {
    const header = document.querySelector('#header');
    const open = document.querySelector('#open');
    const close = document.querySelector('#close');
    const big_header = document.querySelector('#big-header');

    const handle_click = () => {
        header.classList.toggle('modal-open');
        [open, close, big_header].forEach(t => t.classList.toggle('hidden'));
    }

    open.addEventListener('click', handle_click);
    close.addEventListener('click', handle_click);
}

document.addEventListener('turbolinks:load', on_load)
