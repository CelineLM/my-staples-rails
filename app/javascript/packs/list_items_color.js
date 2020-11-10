const itemsColor = () => {
  const listItems = document.querySelectorAll('.item');
listItems.forEach((item) => {
  const quantity = item.dataset.quantity;
  if (quantity === 'Full') {
    item.classList.add('full-item');
  } else if (quantity === 'Empty') {
    item.classList.add('empty-item');
  } else {
    item.classList.add('almost-empty-item');
  }
});
}

export { itemsColor };