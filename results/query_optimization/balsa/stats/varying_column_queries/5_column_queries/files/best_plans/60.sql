/*+ HashJoin(ph p u)
 HashJoin(p u)
 SeqScan(ph)
 SeqScan(p)
 SeqScan(u)
 Leading((ph (p u))) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u WHERE ph.PostId = p.Id AND p.OwnerUserId = u.Id AND ph.CreationDate>='2010-09-24 04:16:19'::timestamp AND p.Score>=-2 AND p.CreationDate>='2010-09-07 02:04:47'::timestamp AND p.CreationDate<='2014-09-11 04:40:16'::timestamp AND u.Views<=36;

