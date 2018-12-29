document.getElementById("workicon").onclick = function() {changeFloat()};
document.getElementById("worktext").onclick = function() {changeFloat()};

function changeFloat() {
  let icon = document.getElementById("workicon");
  let text = document.getElementById("worktext");

  if (icon.style.float == 'right') {
    icon.style.float = 'left'
    text.style.float = 'right'
  } else {
    icon.style.float = 'right'
    text.style.float = 'left'
  };
};
