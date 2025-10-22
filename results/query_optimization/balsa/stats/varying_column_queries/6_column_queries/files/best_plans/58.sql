/*+ HashJoin(b ph u v)
 HashJoin(ph u v)
 HashJoin(u v)
 SeqScan(b)
 SeqScan(ph)
 IndexScan(u)
 SeqScan(v)
 Leading((b (ph (u v)))) */
SELECT COUNT(*) FROM postHistory as ph, votes as v, users as u, badges as b WHERE u.Id = ph.UserId AND u.Id = v.UserId AND u.Id = b.UserId AND ph.PostHistoryTypeId=4 AND ph.CreationDate>='2010-08-09 10:34:57'::timestamp AND v.BountyAmount<=100 AND u.Views<=59 AND b.Date>='2010-10-23 08:54:47'::timestamp AND b.Date<='2014-08-26 18:51:40'::timestamp;

