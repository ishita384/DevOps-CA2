const express = require('express');
const app = express();

// Health endpoint
app.get('/health', (req, res) => {
  res.json({ message: "Server is running ✅" });
});

// Start server
const PORT = 3000;
app.listen(PORT, () => {
  console.log(`Server running on port ${PORT}`);
});
