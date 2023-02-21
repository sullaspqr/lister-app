function App() {
 const [items, setItems] = React.useState([]);
 
 React.useEffect(() => {
   fetch("https://localhost:5001/api/Gyumolcs/GetGyumolcsok")
     .then((res) => (res.ok ? res.json() : []))
     .then((tartalom) => {
       setItems(tartalom)
     });
 }, []);

 return (
   <div className="container">
     <div className="row m-5 border p-5">
       <ListaKomponens elemek={items} />
     </div>
   </div>
 );
}

const ListaKomponens = ({ elemek }) => (
 <main>
  {elemek.map((elem) => (

<div class="container mt-3">
<h2>{elem.nev} {elem.id}</h2>
  <div className="card" style={{width:"400px"}}>
    <img className="card-img-top" src={elem.kepUtvonala} alt="Card image" style={{width:"100%"}}/>
    <div className="card-body">
      <h4 className="card-title">Termék ára: {elem.ar} HUF</h4>
      <p className="card-text">Termék minősége: {elem.minoseg}</p>
      <a href="#" class="btn btn-primary">See Profile</a>
    </div>
  </div>
</div>    
   ))}
</main>
);

ReactDOM.render(React.createElement(App), document.getElementById("app-container"));
