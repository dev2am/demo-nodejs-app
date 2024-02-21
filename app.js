const express = require('express')
const moment = require('moment');
const app = express()
const port = 3000

app.get('/', (req, res) => {
    let timestamp = moment(Date.now()).format('YYYY-MM-DD HH:mm:ss');
    res.json({
        success: true,
        message: 'The app is running with version 1.0.0.',
        timestamp: timestamp
    })
});

app.get('/health', (req, res) => {
    let timestamp = moment(Date.now()).format('YYYY-MM-DD HH:mm:ss');
    res.json({
        success: true,
        message: 'The System is running normally!',
        timestamp: timestamp
    })
});

app.listen(port, () => {
    console.log(`Node.js app listening on port ${port}`)
})
