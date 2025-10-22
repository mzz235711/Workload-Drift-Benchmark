/*+ MergeJoin(c p u)
 MergeJoin(p u)
 SeqScan(c)
 SeqScan(p)
 IndexScan(u)
 Leading((c (p u))) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.UserId = u.Id AND u.Id = p.OwnerUserId AND p.AnswerCount=0 AND p.FavoriteCount<=11 AND p.CreationDate<='2014-09-11 21:30:59'::timestamp AND u.DownVotes=0;

