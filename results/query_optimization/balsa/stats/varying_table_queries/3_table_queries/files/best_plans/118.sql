/*+ MergeJoin(c u p)
 MergeJoin(u p)
 SeqScan(c)
 IndexScan(u)
 SeqScan(p)
 Leading((c (u p))) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.UserId = u.Id AND u.Id = p.OwnerUserId AND p.PostTypeId=1 AND p.FavoriteCount>=0 AND p.FavoriteCount<=14 AND p.CreationDate>='2010-07-29 21:29:57'::timestamp AND p.CreationDate<='2014-08-20 12:32:17'::timestamp AND u.Reputation<=2205;

