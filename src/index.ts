const jsdom = require("jsdom");
const { JSDOM } = jsdom;

    const dom = new JSDOM(
        `<p>Hello
          <img id='testControl' src="foo.jpg">
        </p>`,
        { includeNodeLocations: true }
      );
     

      
    (function( document ) {

        class Tema {

            constructor( id : string ) {
                const elem = document.querySelector( id );
                if( ! elem ) return ; 
                elem.addEventListener('click', (e : any) => {
                    e.preventDefault;
                    this.evento(e.target);
                });
            }

            evento( target :any ) {
                console.log( "procesa evento ... " , target);
            }

        }


        console.log( "starting ... " );

        new Tema( '#testControl');



    })( dom.window.document );
    
    
