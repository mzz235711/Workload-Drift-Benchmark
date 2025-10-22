/*+ MergeJoin(u v p ph c)
 MergeJoin(v p ph c)
 MergeJoin(v p ph)
 MergeJoin(p ph)
 SeqScan(u)
 SeqScan(v)
 IndexScan(p)
 SeqScan(ph)
 SeqScan(c)
 Leading((u ((v (p ph)) c))) */
SELECT COUNT(*) FROM comments as c, posts as p, postHistory as ph, votes as v, users as u WHERE u.Id = c.UserId AND c.UserId = p.OwnerUserId AND p.OwnerUserId = ph.UserId AND ph.UserId = v.UserId AND ph.PostHistoryTypeId=3 AND v.CreationDate='2013-05-28 00:00:00'::timestamp;

