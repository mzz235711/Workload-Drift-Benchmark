/*+ MergeJoin(c v ph u b)
 HashJoin(v ph u b)
 HashJoin(ph u b)
 HashJoin(u b)
 IndexScan(c)
 SeqScan(v)
 SeqScan(ph)
 SeqScan(u)
 IndexScan(b)
 Leading((c (v (ph (u b))))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, badges as b, votes as v, users as u WHERE u.Id =b.UserId AND b.UserId = ph.UserId AND ph.UserId = v.UserId AND v.UserId = c.UserId AND c.CreationDate>='2010-07-22 03:23:01'::timestamp AND ph.PostHistoryTypeId=1 AND b.Date>='2010-07-21 19:38:13'::timestamp AND u.Views<=57;

