/**
 * 
 */

const searchBox = document.getElementById('getData');
const userTable = document.getElementById('allUserData');

const nameColumn = 1;
const emailColumn = 4;

searchBox.addEventListener('input', function() {
    const searchTerm = searchBox.value.toLowerCase();
    const rows = userTable.getElementsByTagName('tr');
  
    for (let i = 1; i < rows.length; i++) {
      const row = rows[i];
      const nameCell = row.cells[nameColumn];
      const emailCell = row.cells[emailColumn];
      const userName = nameCell.textContent.toLowerCase();
      const userEmail = emailCell.textContent.toLowerCase();
      const matchname = userName.includes(searchTerm);
      const matchemail = userEmail.includes(searchTerm);
      if (matchname || matchemail) {
        row.classList.remove('demohidden');
      } else {
        row.classList.add('demohidden');
      }
    }
});
