/*+ MergeJoin(u c p)
 MergeJoin(c p)
 IndexScan(u)
 SeqScan(c)
 SeqScan(p)
 Leading((u (c p))) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.PostId = p.Id AND c.UserId = u.Id AND c.Score=1 AND c.CreationDate>='2010-07-21 15:02:21'::timestamp AND p.PostTypeId=1 AND p.FavoriteCount=0 AND p.CreationDate<='2014-09-08 23:56:50'::timestamp AND u.Reputation>=1 AND u.Views>=0 AND u.Views<=268;

