/*+ MergeJoin(u c p)
 MergeJoin(c p)
 IndexScan(u)
 SeqScan(c)
 SeqScan(p)
 Leading((u (c p))) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.PostId = p.Id AND c.UserId = u.Id AND c.Score=2 AND c.CreationDate>='2010-07-28 18:14:50'::timestamp AND p.ViewCount>=0 AND p.AnswerCount<=7 AND p.CommentCount>=0 AND p.CommentCount<=22 AND p.FavoriteCount<=3 AND p.CreationDate>='2010-07-27 05:04:45'::timestamp AND p.CreationDate<='2014-09-03 13:55:45'::timestamp AND u.Reputation<=151 AND u.DownVotes<=41 AND u.CreationDate<='2014-09-10 15:27:53'::timestamp;

