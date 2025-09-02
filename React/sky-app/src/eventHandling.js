function Events(){
    const click1 = () => {
        alert('Hello from Click');
    }
    const click2 = () => {
        alert('Hello from Double Click');
    }
    const click3 = () => {
        alert('Hello from Mouse Down');
    }
    const click4 = () => {
        alert('Hello from Mouse Leave');
    }
    const click5 = () => {
        alert('Hello from key Down');
    }
    return(
        <>
            <div class="d-flex">
                <button class="btn btn-primary" onClick={click1}>Click Me </button>
                <button class="btn btn-primary" onDoubleClick={click2}>Double Click Me</button>
                <button class="btn btn-primary" onMouseMove={click3}>Mouse Down Me </button>
                <button class="btn btn-primary" onMouseLeave={click4}>Mouse Leave Me </button>
                <button class="btn btn-primary" onKeyDown={click5}>key Down Me </button>
            </div>
        </>
    )
}
export default Events;