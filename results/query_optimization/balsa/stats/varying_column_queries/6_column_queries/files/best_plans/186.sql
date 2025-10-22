/*+ HashJoin(c p u ph b)
 HashJoin(c p u ph)
 HashJoin(c p u)
 HashJoin(p u)
 SeqScan(c)
 IndexScan(p)
 IndexScan(u)
 IndexScan(ph)
 SeqScan(b)
 Leading((((c (p u)) ph) b)) */
SELECT COUNT(*) FROM comments as c, posts as p, postHistory as ph, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = p.OwnerUserId AND u.Id = ph.UserId AND u.Id = b.UserId AND p.CreationDate<='2014-09-09 05:30:22'::timestamp AND ph.PostHistoryTypeId=6 AND ph.CreationDate<='2014-08-18 08:45:08'::timestamp AND b.Date>='2010-07-27 09:13:44'::timestamp AND u.Views<=39 AND u.CreationDate<='2014-09-11 19:52:54'::timestamp;

