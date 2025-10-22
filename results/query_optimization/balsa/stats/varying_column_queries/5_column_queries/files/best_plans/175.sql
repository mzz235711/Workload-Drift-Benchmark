/*+ HashJoin(ph u b v)
 HashJoin(u b v)
 HashJoin(u b)
 SeqScan(ph)
 IndexScan(u)
 SeqScan(b)
 IndexScan(v)
 Leading((ph ((u b) v))) */
SELECT COUNT(*) FROM postHistory as ph, votes as v, users as u, badges as b WHERE u.Id = ph.UserId AND u.Id = v.UserId AND u.Id = b.UserId AND u.Views>=0 AND u.Views<=64 AND u.CreationDate>='2010-10-09 14:16:05'::timestamp AND b.Date>='2010-09-05 13:14:18'::timestamp AND b.Date<='2014-09-09 05:17:41'::timestamp;

