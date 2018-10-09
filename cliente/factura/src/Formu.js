import React, { Component } from 'react';

class Formu extends Component{

  constructor( args ) {
    super(args);
    this.state = {
    };
  }
  render = () => {

    return(
      <div className= 'formcont'>
        <label htmlFor="producto">Nombre del producto</label>
        <input name="producto" id="producto" type="text"/>
        <br/>
        <label htmlFor="cantidad">Nombre del producto</label>
        <input name="cantidad" id="cantidad" type="text"/>
      </div>
    );
  };

}

export default Formu;
