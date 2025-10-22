/*+ MergeJoin(c ph u v)
 MergeJoin(ph u v)
 NestLoop(u v)
 SeqScan(c)
 IndexScan(ph)
 IndexScan(u)
 IndexScan(v)
 Leading((c (ph (u v)))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, votes as v, users as u WHERE u.Id = v.UserId AND v.UserId = ph.UserId AND ph.UserId =c.UserId AND ph.PostHistoryTypeId=5 AND v.BountyAmount>=0;

