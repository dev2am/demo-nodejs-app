const express = require('express')
const moment = require('moment');
const app = express()
const port = 3000

app.get('/', (req, res) => {
    let timestamp = moment(Date.now()).format('YYYY-MM-DD HH:mm:ss');
    res.json({
        success: true,
        message: 'Demp App is running with version 2.0.0.',
        timestamp: timestamp
    })
});

app.get('/health', (req, res) => {
    let timestamp = moment(Date.now()).format('YYYY-MM-DD HH:mm:ss');
    res.json({
        success: true,
        message: 'The System is runining normally!',
        timestamp: timestamp
    })
});

app.listen(port, () => {
    console.log(`Node.js app listening on port ${port}`)
})
