/*+ MergeJoin(u c p)
 HashJoin(c p)
 IndexScan(u)
 SeqScan(c)
 SeqScan(p)
 Leading((u (c p))) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.PostId = p.Id AND c.UserId = u.Id AND p.ViewCount<=5568 AND p.FavoriteCount>=0 AND p.FavoriteCount<=5 AND p.CreationDate>='2010-07-28 20:43:32'::timestamp AND p.CreationDate<='2014-09-09 14:28:16'::timestamp AND u.DownVotes<=1 AND u.CreationDate>='2011-04-20 22:55:41'::timestamp;

