/*+ HashJoin(ph v p u)
 HashJoin(v p u)
 HashJoin(p u)
 SeqScan(ph)
 SeqScan(v)
 SeqScan(p)
 IndexScan(u)
 Leading((ph (v (p u)))) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, votes as v, users as u WHERE p.Id = ph.PostId AND u.Id = p.OwnerUserId AND p.Id = v.PostId AND p.PostTypeId=1 AND p.Score>=-1 AND p.CreationDate<='2014-08-20 18:30:58'::timestamp AND v.CreationDate>='2010-07-20 00:00:00'::timestamp AND u.CreationDate>='2010-11-05 17:09:41'::timestamp AND u.CreationDate<='2014-09-10 08:38:19'::timestamp;

