function Passed(){
    return <h1> Passed</h1>;
}
function Fail(){
    return <h1> Failed</h1>;
}
function Question(props){
    const isTrue = true;
    if(isTrue){
        return(<Passed/>);
    }
    else{
        return(<Fail/>);
    }
}
export default Question;