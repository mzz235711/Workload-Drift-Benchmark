/*+ MergeJoin(u c p)
 HashJoin(c p)
 IndexScan(u)
 SeqScan(c)
 SeqScan(p)
 Leading((u (c p))) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.PostId = p.Id AND c.UserId = u.Id AND c.Score=0 AND p.PostTypeId=1 AND p.FavoriteCount<=13 AND p.CreationDate>='2010-07-29 13:43:53'::timestamp AND p.CreationDate<='2014-09-12 21:38:37'::timestamp AND u.Reputation<=637 AND u.CreationDate<='2014-08-22 19:32:20'::timestamp;

