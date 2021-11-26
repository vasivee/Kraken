fetch('my schools url to rest passwords', {
    method: "POST",
    headers: {
        'Content-type': 'application/json'
    },
    body: JSON.stringify({
        user_id: 'student id',
        password: 'new password'
    })
})