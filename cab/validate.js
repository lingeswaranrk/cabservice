
function validate(e){
        let error = document.getElementById('error')
        let username = document.getElementById('username').value;
        let password = document.getElementById('password').value;
        

        let database = {
            username :"user@1",
            password:"sp123"
        }
        if(username == database.username & password == database.password){
            console.log('success')
        }
        else{
            error.innerHTML = "username or password is wrong"
            e.preventDefault()
        }
    }