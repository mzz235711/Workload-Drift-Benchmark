/*+ MergeJoin(c p u)
 HashJoin(c p)
 SeqScan(c)
 SeqScan(p)
 SeqScan(u)
 Leading(((c p) u)) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.PostId = p.Id AND c.UserId = u.Id AND c.Score=0 AND p.AnswerCount<=5 AND p.FavoriteCount>=0 AND u.DownVotes=0 AND u.UpVotes>=0 AND u.CreationDate<='2014-09-03 18:12:55'::timestamp;

