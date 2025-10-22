/*+ HashJoin(ph u b v c)
 HashJoin(ph u b v)
 HashJoin(ph u b)
 HashJoin(u b)
 SeqScan(ph)
 SeqScan(u)
 SeqScan(b)
 IndexScan(v)
 SeqScan(c)
 Leading((((ph (u b)) v) c)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, badges as b, votes as v, users as u WHERE u.Id =b.UserId AND b.UserId = ph.UserId AND ph.UserId = v.UserId AND v.UserId = c.UserId AND ph.PostHistoryTypeId=3 AND b.Date>='2010-07-26 20:23:42'::timestamp AND b.Date<='2014-08-26 09:10:56'::timestamp AND v.BountyAmount>=0 AND u.CreationDate>='2010-07-27 02:48:57'::timestamp;

