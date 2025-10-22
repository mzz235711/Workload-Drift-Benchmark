/*+ HashJoin(b ph c u)
 HashJoin(ph c u)
 MergeJoin(c u)
 SeqScan(b)
 SeqScan(ph)
 SeqScan(c)
 IndexScan(u)
 Leading((b (ph (c u)))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = ph.UserId AND u.Id = b.UserId AND c.Score=0 AND c.CreationDate='2012-03-14 07:38:28'::timestamp AND ph.PostHistoryTypeId=5 AND ph.CreationDate<='2014-08-18 14:10:36'::timestamp AND b.Date>='2010-07-27 02:28:43'::timestamp AND u.CreationDate>='2011-03-05 10:48:05'::timestamp AND u.CreationDate<='2014-08-10 11:01:39'::timestamp;

