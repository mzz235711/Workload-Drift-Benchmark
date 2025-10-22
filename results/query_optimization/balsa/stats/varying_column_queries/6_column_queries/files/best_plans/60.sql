/*+ HashJoin(c v ph u b)
 HashJoin(v ph u b)
 HashJoin(ph u b)
 HashJoin(u b)
 SeqScan(c)
 SeqScan(v)
 SeqScan(ph)
 IndexScan(u)
 IndexScan(b)
 Leading((c (v (ph (u b))))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, badges as b, votes as v, users as u WHERE u.Id =b.UserId AND b.UserId = ph.UserId AND ph.UserId = v.UserId AND v.UserId = c.UserId AND c.CreationDate>='2010-07-26 21:24:35'::timestamp AND ph.PostHistoryTypeId=3 AND v.BountyAmount<=50 AND v.CreationDate>='2010-07-20 00:00:00'::timestamp AND u.DownVotes<=5 AND u.CreationDate<='2014-08-06 21:29:05'::timestamp;

