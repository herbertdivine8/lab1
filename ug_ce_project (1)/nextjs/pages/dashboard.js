import { useEffect, useState } from 'react';

export default function Dashboard() {
  const [fees, setFees] = useState([]);

  useEffect(() => {
    fetch('/api/fees')
      .then(res => res.json())
      .then(data => setFees(data));
  }, []);

  return (
    <div>
      <h2>Outstanding Fees</h2>
      <pre>{JSON.stringify(fees, null, 2)}</pre>
    </div>
  );
}