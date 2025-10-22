/*+ HashJoin(p u)
 SeqScan(p)
 SeqScan(u)
 Leading((p u)) */
SELECT COUNT(*) FROM posts as p, users as u WHERE p.OwnerUserId= u.Id AND p.AnswerCount>=0 AND p.CommentCount<=16 AND p.FavoriteCount>=0 AND u.UpVotes<=95 AND u.CreationDate<='2014-08-24 16:31:46'::timestamp;

