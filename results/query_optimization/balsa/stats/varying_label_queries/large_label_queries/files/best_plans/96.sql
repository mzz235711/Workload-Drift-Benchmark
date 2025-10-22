/*+ HashJoin(ph u b v c)
 HashJoin(ph u b v)
 MergeJoin(ph u b)
 HashJoin(u b)
 IndexScan(ph)
 IndexScan(u)
 SeqScan(b)
 SeqScan(v)
 SeqScan(c)
 Leading((((ph (u b)) v) c)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, badges as b, votes as v, users as u WHERE u.Id =b.UserId AND b.UserId = ph.UserId AND ph.UserId = v.UserId AND v.UserId = c.UserId AND c.CreationDate>='2010-08-19 14:41:44'::timestamp AND ph.PostHistoryTypeId=1 AND b.Date<='2014-09-11 11:31:22'::timestamp AND v.BountyAmount<=50 AND v.CreationDate<='2014-09-12 00:00:00'::timestamp AND u.UpVotes>=0 AND u.UpVotes<=42 AND u.CreationDate<='2014-09-11 18:52:02'::timestamp;

