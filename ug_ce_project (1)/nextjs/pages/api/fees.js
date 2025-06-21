export default async function handler(req, res) {
  // Simulated response
  const data = [
    { student_id: 1, first_name: "Alice", outstanding: 4500 },
    { student_id: 2, first_name: "Benjamin", outstanding: 5000 },
    { student_id: 3, first_name: "Clara", outstanding: 10000 }
  ];
  res.status(200).json(data);
}