/*+ HashJoin(ph u b p c)
 NestLoop(ph u b p)
 HashJoin(ph u b)
 NestLoop(u b)
 IndexScan(ph)
 IndexScan(u)
 IndexScan(b)
 IndexScan(p)
 SeqScan(c)
 Leading((((ph (u b)) p) c)) */
SELECT COUNT(*) FROM comments as c, posts as p, postHistory as ph, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = p.OwnerUserId AND u.Id = ph.UserId AND u.Id = b.UserId AND c.Score=0 AND ph.PostHistoryTypeId=2 AND ph.CreationDate>='2011-02-05 01:46:59'::timestamp AND u.Reputation=1;

