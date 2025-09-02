function Parent(){
    return(
        <Child name="Sky" age={20}/>
    )
}

function Child(props){
    return(
        <>
            <h1>Props Handling</h1>
            <h1>Name : {props.name}</h1>
            <h1>Age : {props.age}</h1>
        </>
    )
}

export default Parent;