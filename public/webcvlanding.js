document.getElementById("workicon").onclick = function() {changeFloat()};
document.getElementById("worktext").onclick = function() {changeFloat()};

function changeFloat() {
  let icon = document.getElementById("workicon");
  let text = document.getElementById("worktext");

  if (icon.style.float == 'left') {
    icon.style.float = 'right'
    text.style.float = 'left'
  } else {
    icon.style.float = 'left'
    text.style.float = 'right'
  };
};
