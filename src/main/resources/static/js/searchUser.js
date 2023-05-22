/**
 * 
 */

const searchBox = document.getElementById('getData');
const userTable = document.getElementById('allUserData');

const nameColumn = 1;

searchBox.addEventListener('input', function() {
    const searchTerm = searchBox.value.toLowerCase();
    const rows = userTable.getElementsByTagName('tr');
  
    for (let i = 1; i < rows.length; i++) {
      const row = rows[i];
      const nameCell = row.cells[nameColumn];
      const userName = nameCell.textContent.toLowerCase();
  
      if (userName.includes(searchTerm)) {
        row.classList.remove('demohidden');
      } else {
        row.classList.add('demohidden');
      }
    }
  });