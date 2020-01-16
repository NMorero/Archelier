
var users = '';






function getUsers(){
    $.ajax({
        url: '/getUsers',
		type: 'get',
        async   : false,
        success : function(data) {

            users = Object.values(data);
        }
    });

}



function taskButton(){
    getUsers();

    userSelect = document.getElementById('taskBtnUserSelect');
    users.map(function (user) {
        const templateLiteral = `
        <option value="1">${user.id}</option>
        `;


        userSelect.innerHTML = userSelect.innerHTML.concat(templateLiteral);

    });
}
