function Grandchild({ massage }) {
  return (
    <>
      <p>Massage is : {massage}</p>
    </>
  );
}

function Child({ massage }) {
  return (
    <>
      <Grandchild massage={massage} />
    </>
  );
}

function Vrindavan() {
  const msg = "Radhe Radhe form Vrindavan";
  return (
    <>
      <Child massage={msg} />
    </>
  );
}

function DrilDemo() {
  return (
    <>
      <div>
        <h1>{Vrindavan()}</h1>
      </div>
    </>
  );
}
export default DrilDemo;
