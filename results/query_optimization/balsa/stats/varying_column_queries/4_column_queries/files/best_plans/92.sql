/*+ HashJoin(ph u b v)
 HashJoin(u b v)
 HashJoin(u b)
 SeqScan(ph)
 IndexScan(u)
 SeqScan(b)
 SeqScan(v)
 Leading((ph ((u b) v))) */
SELECT COUNT(*) FROM postHistory as ph, votes as v, users as u, badges as b WHERE u.Id = ph.UserId AND u.Id = v.UserId AND u.Id = b.UserId AND ph.CreationDate>='2011-04-07 00:09:02'::timestamp AND ph.CreationDate<='2014-08-04 09:58:43'::timestamp AND v.CreationDate>='2010-07-23 00:00:00'::timestamp AND v.CreationDate<='2014-09-09 00:00:00'::timestamp;

