/*+ HashJoin(ph u b v)
 HashJoin(u b v)
 HashJoin(u b)
 SeqScan(ph)
 SeqScan(u)
 SeqScan(b)
 IndexScan(v)
 Leading((ph ((u b) v))) */
SELECT COUNT(*) FROM postHistory as ph, votes as v, users as u, badges as b WHERE u.Id = ph.UserId AND u.Id = v.UserId AND u.Id = b.UserId AND ph.CreationDate>='2010-09-21 17:19:53'::timestamp AND ph.CreationDate<='2014-09-09 20:10:25'::timestamp AND v.CreationDate>='2010-07-19 00:00:00'::timestamp AND u.Views<=83 AND b.Date>='2010-08-01 23:04:55'::timestamp;

