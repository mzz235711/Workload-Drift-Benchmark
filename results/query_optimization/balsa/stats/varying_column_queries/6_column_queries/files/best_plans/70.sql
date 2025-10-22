/*+ HashJoin(ph c u b)
 HashJoin(c u b)
 HashJoin(c u)
 SeqScan(ph)
 SeqScan(c)
 IndexScan(u)
 SeqScan(b)
 Leading((ph ((c u) b))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = ph.UserId AND u.Id = b.UserId AND c.CreationDate='2013-04-04 23:12:47'::timestamp AND ph.PostHistoryTypeId=1 AND ph.CreationDate>='2010-08-22 02:10:22'::timestamp AND ph.CreationDate<='2014-06-23 14:14:53'::timestamp AND b.Date<='2014-09-13 23:25:21'::timestamp AND u.Reputation>=1;

