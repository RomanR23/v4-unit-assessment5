select helo_posts.id as post_id, title, content, img, profile_pic, date_created, username as author_username from helo_posts
join helo_users on post_id = helo_users.id
WHERE title ILIKE $1
ORDER BY date_created ASC