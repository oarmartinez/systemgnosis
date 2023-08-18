const btnSwitch = document.getElementById('switch');

const configUser = window.matchMedia('(prefers-color-scheme: dark)');

const localConfigDark = localStorage.getItem('tema');

if (localConfigDark === 'dark') {
    document.body.classList.toggle('dark');
    btnSwitch.classList.toggle('active');
}


btnSwitch.addEventListener('click', () =>{


    document.body.classList.toggle('dark');
    btnSwitch.classList.toggle('active');

    
    console.log(configUser.matches);


    let colorTema;

    if (configUser.matches) {        
        colorTema = document.body.classList.contains('dark') ? 'dark' : '';
    }
    localStorage.setItem('tema', colorTema); 
});
